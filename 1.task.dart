import 'dart:math';

abstract class GeometricObject
{
  late String color;
  late bool filled;

  GeometricObject()
  {
  color = "white";
  filled = false;
  }
  GeometricObject.init(this.color,this.filled);


  String toString();
  double getArea();
  double getPerimeter();
}

class Triangle extends GeometricObject
{
 late double side1;
 late double side2;
 late double side3;

  Triangle()
  {
    side1 = 1.0;
    side2 = 1.0;
    side3 = 1.0;
  }
  Triangle.init(this.side1,this.side2,this.side3);

  @override
  double getArea() {
    double s = (side1 + side2 + side3)/2;
    return sqrt(s * (s-side1) * (s-side2) * (s-side3));
  }
  @override
  double getPerimeter() {
   return side1 + side2 + side3 ;
  }
  @override
  String toString() {
   return "Triangle: side1= $side1 , side2= $side2 , side3=$side3";
  }
}
class Rectangle extends GeometricObject
{
 late double height;
 late double width;
  Rectangle()
  {
    height=1.0;
    width=1.0;
  }
  Rectangle.max(this.height,this.width,String color,bool filled ):super.init(color, filled);

  @override
  double getArea()
  {
   return width * height;
  }
  @override
  double getPerimeter()
  {
    return 2 * (width + height);
  }
  @override
  String toString()
  {
    return "Rectangle: height =$height , width =$width";
  }
}

void main() {
  Triangle t1 = Triangle();
  print("Triangle 1:");
  print(t1.toString());
  print("Area = ${t1.getArea()}");
  print("Perimeter = ${t1.getPerimeter()}");
  print("Color = ${t1.color}");
  print("Filled = ${t1.filled}");

  print("----------------------");

  Triangle t2 = Triangle.init(3.0, 4.0, 5.0);
  print("Triangle 2:");
  print(t2.toString());
  print("Area = ${t2.getArea()}");
  print("Perimeter = ${t2.getPerimeter()}");
  print("Color = ${t2.color}");
  print("Filled = ${t2.filled}");

  print("======================");

  Rectangle r1 = Rectangle();
  print("Rectangle 1:");
  print(r1.toString());
  print("Area = ${r1.getArea()}");
  print("Perimeter = ${r1.getPerimeter()}");
  print("Color = ${r1.color}");
  print("Filled = ${r1.filled}");

  print("----------------------");

  Rectangle r2 = Rectangle.max(10.0, 5.0, "red", true);
  print("Rectangle 2:");
  print(r2.toString());
  print("Area = ${r2.getArea()}");
  print("Perimeter = ${r2.getPerimeter()}");
  print("Color = ${r2.color}");
  print("Filled = ${r2.filled}");
}