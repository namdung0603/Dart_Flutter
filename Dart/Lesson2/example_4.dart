void main() {
  int diemVan = 7;
  int diemToan = 8;
  int diemTong = 0;

  diemTong += diemToan;
  diemTong += diemVan;
  double diemTB = diemTong / 2;
  print("Diem trung binh: $diemTB");
  String? xepLoai;
  xepLoai ??= "Chua xep loai";
  if (diemTB >= 5) {
    xepLoai = "Dat";
  } else {
    xepLoai = "Khong dat";
  }
  print(diemTB);
  print("Xep loai: $xepLoai");
}
