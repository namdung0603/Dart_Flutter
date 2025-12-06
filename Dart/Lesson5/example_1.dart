void main() {
  var list1 = [1, 2, 3, 4];
  List<int> list2 = [4, 5, 6];
  List<String> list3 = [];
  var list4 = List<int>.filled(3, 1);
  var list5 = [1, "Dung", 2, 2.5];
  print(list1);
  print(list2);
  print(list3);
  print(list4);
  print(list5);

  //add phan tu
  list1.add(4);
  list1.addAll([5, 6, 7, 8]);
  list5.add("Tien");
  list5.add(3);
  list5.add(true);
  print(list1);
  print(list5);

  //chen phan tu
  list2.insert(1, 3);
  list2.insertAll(0, [-2, -1]);
  print(list2);

  //Xoa phan tu trong list

  list1.remove(4);
  list1.removeAt(2);
  list1.removeLast();
  list1.removeWhere((e) => e == 5);
  print(list1);
  list1.clear();
  print("after clear: ${list1}");

  //Lay mot phan tu
  print(list5[1]);
  print(list5.first);
  print(list5.last);
  print(list5.length);

  //kiem tra list rong
  print(list3.isEmpty);
  print("list5 co rong khong? Tra loi: ${list5.isNotEmpty ? "khong rong" : "rong"}");
  print(list5.contains("Dung"));
  print(list5.indexOf(3));
  print(list5.lastIndexOf("Dung"));

  //bien doi
  var list6 = [9, 1, 0, 5, -1, 10];
  list6.sort();
  print(list6);
  list6 = list6.reversed.toList();
  print("after reverse: ${list6}");

  //cat va noi chuoi
  var subList = list6.sublist(1,3);
  print(subList);
  print(list6.join(","));
}
