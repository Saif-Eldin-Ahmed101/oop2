abstract class Shape
{
  String color;

  Shape({ required this.color});

  double getArea();
  String toString();
}

class Triangle extends Shape
{
  int base;
  int height;

  Triangle ({required this.base ,required this.height, required super.color})
  {
    if (base <= 0 || height <= 0)
      {
        print("Base and height must be positive values.");
      }
  }

  @override
  double getArea()
  {
    if (base <= 0 || height <= 0)
    {
      return 0.0;
    }
    return 0.5 * base *  height;
  }
  @override
  String toString()
  {
    return "Triangle:base=$base,height=$height,color = $color,area=${getArea()}";
  }
}

class Rectangle extends Shape
{
  int width;
  int length;

  Rectangle ({required this.width,required this.length,required super.color})
  {
    if (width <= 0 || length <= 0)
    {
      print("width and length must be positive values.");
    }
  }

  @override
  double getArea()
  {
     if (width <= 0 || length <= 0)
      {
        return 0.0;
      }
     int area= width * length ;
     return area.toDouble();

  }
  @override
  String toString()
  {
    return "Rectangle: width = $width , length = $length , color = $color , area=${getArea()}";
  }
}

void main() {

  Triangle triangle = Triangle(base: 10, height: 6, color: "Red",);

  print(triangle);
  print("Triangle Area: ${triangle.getArea()}");

  print("--------------------");

  Rectangle rectangle = Rectangle(width: 5, length: 8, color: "Blue",);

  print(rectangle);
  print("Rectangle Area: ${rectangle.getArea()}");

  print("--------------------");

  Triangle invalidTriangle = Triangle(base: -4, height: 6, color: "Green",);

  print(invalidTriangle);
  print("Invalid Triangle Area: ${invalidTriangle.getArea()}");

  print("--------------------");

  Rectangle invalidRectangle = Rectangle(width: 0, length: 8, color: "Black",);

  print(invalidRectangle);
  print("Invalid Rectangle Area: ${invalidRectangle.getArea()}");
}