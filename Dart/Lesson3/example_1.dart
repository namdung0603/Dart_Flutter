import 'dart:io';

void main() {
  stdout.write("Nhap ten cua ban:");
  String name = stdin.readLineSync()!;
  stdout.write("Nhap tuoi cua ban:");
  int age = int.parse(stdin.readLineSync()!);
  print("Xin chao $name, ban $age tuoi");
  print("toi hoc o truong FPT University");
}
