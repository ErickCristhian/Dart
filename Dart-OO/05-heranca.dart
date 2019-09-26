class Pessoas{
  String primeiro_nome, ultimo_nome;
  Pessoas(this.primeiro_nome, this.ultimo_nome);

  String nome(){
    return this.primeiro_nome + ' ' + this.ultimo_nome;
  }
}

class Funcionario extends Pessoas{
  double salario;

  Funcionario(String primeiro_nome, String ultimo_nome, this.salario): super(primeiro_nome, ultimo_nome);

  void receberAumento(double valor){
    this.salario += valor;
  }
}
  //String nome(){
    //String msg = super.nome();
    //return msg + ' tem o salario de ' + this.salario;
  //}


void main(){
  var erick = new Pessoas('Erick', 'Cristhian');
  var erick2 = new Funcionario('Erick', 'Cristhian', 20000);
  print(erick2.nome());
  print(erick.nome());
  erick2.receberAumento(50000.50);
  print(erick2.salario);
}