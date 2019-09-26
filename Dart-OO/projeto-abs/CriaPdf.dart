import 'Geometria/FormaGeometrica.dart';

class CriaPdf {
  static String render(FormaGeometrica forma){
    return 'A área da Forma Geométrica '+ forma.tipo + ' ' + forma.area().toString();
  }
}