class Pessoa {
  String primeiro_nome, ultimo_nome;

  Pessoa(this.primeiro_nome, this.ultimo_nome);

  
  String nome(){
    return this.primeiro_nome + ' ' + this.ultimo_nome;
  }
}

void main() {
  Pessoa erick = new Pessoa('Erick', 'Silva');
  Pessoa joao = new Pessoa('João', 'Figueiredo');

  //erick.primeiro_nome = 'Erick';
  //erick.ultimo_nome = 'Silva';
  print(erick.nome());

  //joao.primeiro_nome = 'João';
  //joao.ultimo_nome = 'Silva';
  print(joao.nome());


  }