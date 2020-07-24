/* classe em Dart
    Os modificadores de visibilidade private, public e protected não existem em 
    Dart, uma classe ou atributo é publico por padrão, para alterar sua visibi-
    lidade para private, usa-se o underscore (_) no inicio do nome */
class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  /* Construtores em Dart podem usar this para implicitamente atribuírem os pa-
  rametros recebidos às suas propriedades */
  Bicycle(this.cadence, this.gear);

  /* O atributo _speed é privado, logo precisa de um método get para recuperar
  seu valor (todo atributo publico em Dart já possui implicitamente um getter e 
  um setter)  */
  int get speed => _speed;

  /* Os dois métodos abaixo modificam o valor do atributo privado _speed decre-
  mentando e incrementando, respectivamente */
  void applyBrake(int decrement) => _speed -= decrement;
  void speedUp(int increment) => _speed += increment;

  /* Sobrescreve o método toString, a string retornada possui uma interpolação
  do atributo _speed, também é possível interpolar uma expressão usando a nota-
  ção ${} */
  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
  bike.speedUp(10);
  print(bike);
  bike.applyBrake(5);
  print(bike);
}
