import 'dart:math';

class Point{
  double x;
  double y;

  Point(this.x, this.y);

  double distanceTo(Point other){
    double dx = x - other.x;
    double dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  @override
  String toString() {
    return 'Point($x, $y)';
  }

}


class Point2{
  double x = 0;
  double? y;
}

double? X_ = 10;

class Point3{
  double? x = X_;
  // double? y = this.x; => Error
  late double? y = this.x;

}

class Rectangle{
  double width;
  double height;
  late double _z;

  Rectangle(this.width, this.height);
  double get z => _z;
  set z(double value){
    _z = value;
  }

  @override
  bool operator ==(Object other) {
    if(other is! Rectangle) return false;
    return width == other.width && height == other.height;
  }

}

class CheckPoint{
  static double p1 = 15;
  static double sqr(double x){
    return x * x;
  }
}


void main(){
  Point p1 = Point(3,4);
  Point p2 = Point(2,1);

  print(p1.distanceTo(p2).toStringAsFixed(2));
  print(p1);

  Point2 p2_1 = Point2();
  print(p2_1.x);
  print(p2_1.y);

  Rectangle rect = Rectangle(5,10);
  rect.z = 15;
  print(rect.z);
  print(rect._z);
  // Note: Accessing _z directly is possible here because it's within the same library.(xem them giai thich trang 4 so xanh)

  Rectangle rect2 = Rectangle(5,10);
  print(rect == rect2); // true
  
  print(CheckPoint.p1);
  print(CheckPoint.sqr(5));

}