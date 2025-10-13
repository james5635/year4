class Animal {
  int? age;
  speak() {
    print("i speak with $age");
  }

  Animal(this.age);
}

class Dog implements Animal {
  String? name;
  @override
  int? age;
  @override
  speak() {
    print("Dog is speak");
  }

  Dog({this.name, this.age});
}

main() {
  var d = Dog(name: "a", age: 1);
  var e = Animal(1);
}
