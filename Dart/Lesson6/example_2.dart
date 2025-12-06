void main() {
  var record1 = ("first", a: 1, 5, 10.5);
  print(record1);

  var person = (name: "dung", age: 21);
  print(person);

  var point = (123, 456);
  print(point.$1);
  print(point.$2);

  var point1 = (name: "dung", age: 18, 5);
  print(point1.name);
  print(point1.age);
  print(point1.$1);
}
