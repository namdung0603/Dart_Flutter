void main(){
  //kieu du lieu num se luu tru toan bo so nguyen va so thuc
  num a = 10;
  num b = 10.5;
  print(a);
  print(b);

  //chuyen mot so thanh chuoi
  String str1 = 1.toString();
  print(str1);

  //chuyen mot so thuc sang chuoi lay chu so thu n
  String str2 = 3.14159.toStringAsFixed(2);
  print(str2);

  //chen cau truc vao chuoi
  int diemToan = 9;
  int diemVan = 10;
  String ketQua = "Diem tong: ${diemToan+diemVan}";
  print(ketQua);

  //chuoi nam o nhieu dong
  String chuoi = """Day la
    dong thu nhat
    dong thu hai
    dong thu ba""";
    print(chuoi);

  //ki hieu dac biet trong van ban vd: \n, \t
  String test = "Day la mot doan\n van ban";
  print(test);

  //Trong truong hop dung icon, dung ki tu dac biet nhu mot phan cua van ban thi can co "r" truoc doan string;
  String test2 = r"Day la mot doan \n van ban";
  print(test2);

  //Cong chuoi
  String chuoiCong = "Hello"+" World";
  print(chuoiCong);

  //Co the khong can dau + ma van cong chuoi
  String chuoiCong2 = "Hello"" Tran"" Nam"" Dung";
  print(chuoiCong2);
}