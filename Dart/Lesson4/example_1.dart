import "dart:math";
import "dart:io";

void main(){
  late double a,b,c;
  b = 0;
  c = 0;
  do{
    stdout.write("Nhap so a (a khac 0): ");
    String? inputA = stdin.readLineSync();
    if(inputA == null || double.tryParse(inputA) == null){
      print("Vui long nhap so hop le!");
    }

    a = double.parse(inputA!) ?? 0;
  }while(a==0);

  stdout.write("Nhap so b: ");
  String? inputB = stdin.readLineSync();
  if(inputB == null || double.tryParse(inputB) == null){
    print("Vui long nhap so hop le!");
  }
  b = double.parse(inputB!) ?? 0;

  stdout.write("Nhap so c: ");
  String? inputC = stdin.readLineSync();
  if(inputC == null || double.tryParse(inputC) == null){
    print("Vui long nhap so hop le!");
  }
  c = double.parse(inputC!) ?? 0;

  print("Giai Phuong Trinh: ${a}x^2 + ${b}x + ${c} = 0");
  double delta = b*b - 4*a*c;
  if(delta < 0){
    print("Phuong trinh vo nghiem!");
  }
  else if(delta == 0){
    double x = -b/(2*a);
    print("Phuong trinh co nghiem kep x1 = x2 = ${x}");
  }
  else{
    double x1 = (-b + sqrt(delta))/(2*a);
    double x2 = (-b - sqrt(delta))/(2*a);
    print("Phuong trinh co 2 nghiem phan biet:");
    print("x1 = ${x1.toStringAsFixed(2)}");
    print("x2 = ${x2.toStringAsFixed(2)}");
  }
}