void main() {
  Set<String> set1 = {"Dung", "Tien", "Dan"};
  var set2 = {1, "dung", 3.5};
  var set3 = <int>{1, 4, 0, 7, 2, 5};
  var set4 = Set.from([1,2,3,4,5,1,6,7]);

  print(set1);

  //them phan tu
  set1.add("Huong");
  set1.addAll(["Huyen", "Chi"]);
  print("after add: ${set1}");
  
  //xoa phan tu
  set4.remove(2);
  print(set4);
  set4.removeAll([1,6]);
  print(set4);
  set4.clear();
  print(set4);

  //kiem tra
  print(set4.isEmpty);
  print("set4 co rong khong? ${set4.isNotEmpty ? "khong rong" : "rong"}");
  print(set3.contains(4));
  print(set3.containsAll([4,0]));

  //phep toan hop
  var set5 = {1,2,3};
  var set6 = {3,4,5};
  var joinSet = set5.union(set6);
  print("hợp: ${joinSet}");
  var intersectionSet = set5.intersection(set6);
  print("giao: ${intersectionSet}");
  var differenceSet5 = set5.difference(set6);
  print("set5 co ma set6 khong co: ${differenceSet5}");
  var differenceSet6 = set6.difference(set5);
  print("set6 co ma set5 khong co: ${differenceSet6}");

  //bien doi
  var list = set1.toList();
  print(list);
  var newSet = Set.from(set1);
  print(newSet);

  //loc va anh xa
  var filledSet = set2.where((e) => e == "dung");
  print(filledSet);

  print(set3);
  var mapperSet = set3.map((e) => ++e).toSet();
  print(mapperSet);

  set1.forEach((e){
    print(e);
  });
}
