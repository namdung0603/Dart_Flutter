import 'dart:async';

Future<String> taiDuLieu() {
  return Future.delayed(Duration(seconds: 2), () => "Tai du lieu thanh cong");
}

void thucHanh1() {
  print("Bat dau tai du lieu...");
  Future<String> f = taiDuLieu();
  f.then((ketQua) {
    print("ket qua: ${ketQua}");
  });
  print("Done");
}

void thucHanh2() async{
  print("Bat dau tai du lieu...");
  String ketQua = await taiDuLieu();
  print("ket qua: ${ketQua}");
  print("Done");
}

// void thucHanhDongBo(){
//   print("Bat dau tai du lieu...");
//   String ketQua = taiDuLieu();
//   print("ket qua: ${ketQua}");
//   print("Done");
// } => error

void main() {
  thucHanh1();
}
