void main() {
  Object obj = "Hello, Dart!";

  //Kiem tra obj co phai la String
  if (obj is String) {
    print("obj is a String");
  } else {
    print("obj is not a String");
  }

  //kiem tra khong phai kieu
  if (obj is! int) {
    print("obj is not an int");
  } else {
    print("obj is an int");
  }

  //Ep kieu
  String str = obj as String;
  print("The string is: $str");
}
