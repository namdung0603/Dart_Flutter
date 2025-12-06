void main() {
  String ketQua = (100 % 2 == 0) ? "100 la so chan" : "100 la so le";
  print(ketQua);

  int x = 100;
  int y = x ?? 50;
  print(y);

  int? a;
  int b = a ?? 20;
  print(b);
}
