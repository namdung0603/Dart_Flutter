void main(){
  Map<String,dynamic> map1 = {
    "name":"Dung",
    "age":21
  };
  var map2 = {
    "name": "huong",
    1: 25,
    "gender": true
  };

  var map3 = <int, dynamic>{
    1: 13,
    2:"Tien"
  };

  Map<int, String> map4 = {};
  var emptyMap = Map<String, int>();

  print(map1);
  print(map2);
  print(map3);
  print(map4);
  print(emptyMap);

  map1["email"] = "dung@gmail.com";// them phan tu
  print(map1);

  map1["age"] = 18;
  print(map1);

  map1.addAll({
    "address":"HaNoi",
    "gender": "male"
  });

  print(map1);

  //xoa
  map1.remove("gender");
  map1.removeWhere((key,value) => value == 21);
  print(map1);
  map1.clear();
  print(map1);

  //truy cap phan tu
  print(map2[1]);
  print(map2.length);
  
  //lay value an toan voi gia tri mac dinh
  String phone = map1["phone"] ?? "khong ton tai!";
  print(phone);

  //kiem tra
  print(map1.isEmpty);
  print(map2.isNotEmpty);
  print(map2.containsKey(1));
  print(map2.containsValue(21));

  //lay danh sach key hoac danh sach value
  print(map2.keys);
  print(map2.values);
  print(map2.entries);

  //duyet
  map2.forEach((key,value){
    print("${key}: ${value}");
  });

  //duyet entries
  for(MapEntry entry in map2.entries){
    print("${entry.key}: ${entry.value}");
  }

  var testMap = {
    "a":1,
    "b":2,
    "c":3,
    "d":4
  };

  var upperMap = testMap.map((key, value) => MapEntry(key.toUpperCase(), ++value));
  print(upperMap);
  var whereMap = testMap.entries.where((m) => m.value > 2);
  print(whereMap);


}