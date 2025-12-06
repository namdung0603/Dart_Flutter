void main(){
  String str = "Hello";
  Runes runes1 = str.runes;
  print(runes1);

  Runes runes2 = Runes("\u{1F601}");
  print(runes2);

  //chuyển unicode sang string
  String s1 = String.fromCharCode(0x1F601);
  print(s1);
  //chuyển runes sang string
  String s2 = String.fromCharCodes(runes2);
  print(s2);

  //Xu ly
  print(runes1.length);
  print(runes1.first);
  print(runes1.last);

  //duyet diem ma
  runes1.forEach((int runes){
    print("unicode: ${runes}, ki tu: ${String.fromCharCode(runes)}");
  });

  //kiem traa
  Runes runes3 = Runes("");
  print(runes3.isEmpty);
  print(runes2.isNotEmpty);
}