abstract class Shape {
  void draw();
  double area();
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle');
  }

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  void draw() {
    print('Drawing a rectangle');
  }

  @override
  double area() {
    return width * height;
  }
}

void main() {
  Circle circle = Circle(4.0);
  Rectangle rectangle = Rectangle(8.0, 4.0);

  circle.draw();
  print('Circle Area: ${circle.area()}');

  rectangle.draw();
  print('Rectangle Area: ${rectangle.area()}');
}
