void main() {
  List shapes = [Circle(5), Rectangle(5, 10), Triangle(6, 10, 7, 6)];
  for (var shape in shapes) {
    print("Area: ${shape.calculateArea()}");
    print("Perimeter: ${shape.calculatePerimeter()}");
    print(shape.toString());
    print("------");
  }
}

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
  String toString();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }

  @override
  String toString() {
    return "Circle with radius: ${radius}";
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }

  @override
  String toString() {
    return "Rectangle with length: $length width: $width";
  }
}

class Triangle extends Shape {
  double base;
  double height;
  double sideA;
  double sideB;

  Triangle(this.base, this.height, this.sideA, this.sideB);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  double calculatePerimeter() {
    return sideA + sideB + base;
  }

  @override
  String toString() {
    return "triangle with height: $height base: $base sideA: $sideA sideB: $sideB";
  }
}
