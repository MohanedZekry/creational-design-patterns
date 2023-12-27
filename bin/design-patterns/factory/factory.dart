enum Shapes { rectangle, square }

abstract class Shape {
  void draw();
}

class ShapeFactory {
  Shape createShape(Shapes shapeType) {
    switch (shapeType) {
      case Shapes.rectangle:
        return Rectangle();
      case Shapes.square:
        return Square();
    }
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('Draw Rectangle');
  }
}

class Square implements Shape {
  @override
  void draw() {
    print('Draw Square');
  }
}

void main() {
  ShapeFactory shapeFactory = ShapeFactory();
  Shape rectangleShape = shapeFactory.createShape(Shapes.rectangle);
  rectangleShape.draw();

  Shape squareShape = shapeFactory.createShape(Shapes.square);
  squareShape.draw();
}