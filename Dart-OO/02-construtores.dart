class Retangulo {
  num largura, altura;

  Retangulo(this.largura, this.altura);

  //Retangulo.quadrado(dimensao) {
    //this.largura = dimensao;
    //this.altura = dimensao;
  //}

  Retangulo.quadrado(num dimensao) : this(dimensao, dimensao);

  num area(){
    return this.largura * this.altura;
  }
}

void main() {
  Retangulo retangulo = new Retangulo(3, 4);
  print(retangulo.area());

  Retangulo quadrado = new Retangulo.quadrado(3);
  print(quadrado.area());
}