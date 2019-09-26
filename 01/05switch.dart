void main() {
  String acao = 'PENDENTE';

  if(acao == 'ABRIR'){
    print('eu abro');
  } else if(acao == 'FECHAR'){
    print('eu fecho');
  }else if(acao == 'PENDENTE'){
    print('em andamento');
  }else if(acao == 'FINALIZADO'){
    print('terminamos');
  }else {
    print('ação desconhecido');
  }

  switch(acao) {
    case 'ABRIR' :
      print('eu abro');
      break;
  case 'FECHAR':
    print('eu fecho');
    break;
  case 'PENDENTE':
    print('em andamento');
    break;
  case 'FINALIZADO':
    print('terminamos');
    break;
  default: 
    print('ação desconhecido');
  }
}