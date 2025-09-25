/**Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals. */

class Shape {
  double totalArea = 0;
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double _radius = 1;
  Circle(double raduis) {
    if (raduis <= 0) {
      print('Invalid radius');
    } else {
      _radius = raduis;
    }
  }
  @override
  double area() {
    return 3.14 * _radius * _radius;
  }
}

class Rectangle extends Shape {
  double _width = 1;
  double _height = 1;
  Rectangle(double width, double height) {
    if (width > 0 || height > 0) {
      _width = width;
      _height = height;
    } else {
      print('Invalid rectangle dimensions');
    }
  }
  @override
  double area() {
    return _width * _height;
  }
}

class Triangle extends Shape {
  double _base = 1;
  double _height = 1;
  Triangle(double base, double height) {
    if (base > 0 || height > 0) {
      _base = base;
      _height = base;
    } else {
      print('Invalid triangle dimensions');
    }
  }
  @override
  double area() {
    return 0.5 * _base * _height;
  }
}

double calculateCost(double totalArea) {
  double cost = 0;
  if (totalArea <= 50) {
    cost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    cost = (50 * 1.50) + (totalArea - 50) * 1.25;
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + ((totalArea - 150) * 1);
  }
  return cost;
}

void main() {
  double totalArea = 0;
  List<Shape> shapes = [Circle(5), Rectangle(10, 4), Triangle(6, 8)];

  for (var shape in shapes) {
    totalArea += shape.area();
    double totalCost = calculateCost(totalArea);

    print(shape);
    print('Taotal area = ${totalArea.toStringAsFixed(2)}');
    print('Taotal cost = ${totalCost.toStringAsFixed(2)}');
    print('-------------------------------------');
  }
}