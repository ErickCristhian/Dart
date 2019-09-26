abstract class FormaGeometrica {
  String _tipo;
  num area();

  String get tipo => this._tipo.toUpperCase();

  set tipo(String tipo){
    this._tipo = tipo;
  }
}