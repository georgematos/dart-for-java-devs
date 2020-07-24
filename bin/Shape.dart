import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw "Cant't create $type";
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);

  @override
  num get area => pow(side, 2);
}

void main() {
  try {
    final circle = Shape('circle');
    final square = Shape('square');
    print(circle.area);
    print(square.area);
  } catch (err) {
    print(err);
  }
}
