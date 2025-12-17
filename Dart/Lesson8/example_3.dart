abstract class Animal{
  String name;
  int age;
  Animal(this.name, this.age);

  void action();
  void makeSound();
}

class Cat extends Animal{
  String color;
  Cat(this.color, String name, int age):super(name, age);
  @override
  void action() {
    print("${name} is playing with a ball.");
  }

  @override
  void makeSound(){
    print("Sound of Cat has name ${name} is Meow Meow.");
  }
}

void main(){
  Cat cat = Cat("White", "Tom", 3);
  cat.action();
  cat.makeSound();
}