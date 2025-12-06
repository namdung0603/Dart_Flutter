double calculateSum(double a, double b) {
  return a + b;
}

double sum(var a, double b, double c) => a + b + c;

String fullName({String ho = "", String chuLot = "", String ten = ""}) {
  return ho + " " + chuLot + " " + ten;
}

double sum2(double a, [double? b, double? c]) {
  double total = a;
  total += (b != null) ? b : 0;
  total += (b != null) ? b : 0;
  return total;
}

  //check arrow function
  // double divided(double a, double b) => {
  //   return a / b;
  // };
  //lỗi
  

void main() {
  //ham thong thuong
  double result = calculateSum(5.0, 10.0);
  print("Sum: $result");

  //arrow function
  double result2 = sum(1, 2, 3);
  print(result2);

  //ten tham so
  String fn = fullName(ho: "Tran", chuLot: "Nam", ten: "Dung");
  print(fn);
  print(fullName(ten: "Dung", chuLot: "Nam", ho: "Tran"));
  print(fullName(ten: "Dung").trim());

  //tham so tuy chon
  print(sum2(10));
  print(sum2(10,1));

  //hàm vô danh
  var mul = (double a, double b) {
    return a*b;
  };
  print(mul(2,3));

  var mul2 = (double a, double b) => a*b;
  print(mul2(3,4));
}
