import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape with Colorable {
  double radius;

  Circle(this.radius);

  @override
  double area() => pi * pow(radius, 2);

  String getColor() => _color;
}

class Rectangle extends Shape with Colorable {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;

  String getColor() => _color;
}

mixin Colorable {
  late String _color;

  void setColor(String color) => _color = color;
}