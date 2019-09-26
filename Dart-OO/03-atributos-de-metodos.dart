class Cumprimentar {
  //String nome;
  //int idade;

  //Pessoa(this.nome, this.idade);

  //Cumprimentar(this.nome, this.idade);

  void sayHello(String nome, [int idade = 0, String sobrenome]){
    String msg = 'Hello ' + nome;
    if(sobrenome != null){
      msg = msg + ' ' + sobrenome;
    }
    if (idade > 0){
      msg = msg + ' de ' + idade.toString() + ' anos';
    }
    print(msg);
  }
void sayOi(String nome, {int idade = 0, String sobrenome}){
    String msg = 'Hello ' + nome;
    if(sobrenome != null){
      msg = msg + ' ' + sobrenome;
    }
    if (idade > 0){
      msg = msg + ' de ' + idade.toString() + ' anos';
    }
    print(msg);
  }
}
void main() {
  //var erick = new Pessoa('Erick', 20);
  //var erick = new Cumprimentar('Erick', 20);
  var erick = new Cumprimentar();
  erick.sayHello('Erick', 20);
  erick.sayHello('Erick', 20, 'Cristhian');
  erick.sayHello('Erick');

  erick.sayOi('Erick', sobrenome: 'Cristhian');
  erick.sayOi('Erick', sobrenome: 'Cristhian', idade: 20);
}