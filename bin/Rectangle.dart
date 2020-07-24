import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  /*  Em Dart é possível utilizar named parameters, assim o construtor atribui
      valores default para os atributos da classe, named parameters são abra-
      çados por chaves */
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

void main() {
  /*  Em Dart a sobrecarga de métodos é feita de uma forma muito inteligente
      pois é feita de forma implícita, através dos named parameters o constru-
      tor pode ser utilizado de diversas formas, como visto aqui */
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}
