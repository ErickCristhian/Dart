void main(){
  int idade = 1;
  while(idade < 18){
    print(idade.toString() + ' menor que 18');
    idade = idade + 1;
  }

  do {
    
    print('Executou');
    idade = idade + 1;
  } while (idade < 50);
}