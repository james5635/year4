/* 
 * demonstrate on:
 * - abstract class
 * - base class
 * - interface class
 * - abstract interface class
 * - final class
 * - sealed class
 * - mixin
 * - extends => is-a relationship
 * - implements => can-do or has-a relationship
 * - with => share-a relationship
 */
import 'package:test_dart/test_dart.dart' as test_dart;

// abstract class Animal {
//   String? name;
//   void speak();
//   Animal(this.name);
// }
//
// class Dog extends Animal {
//   int? age;
//   Dog(String? name, this.age) : super(name);
//   @override
//   void speak() {
//     print("I am a Dog. Name: ${this.name}. Age: ${this.age}");
//   }
// }
//
// class Cat implements Animal {
//   int? age;
//   @override
//   String? name;
//   Cat(this.name, this.age);
//   @override
//   void speak() {
//     print("I am a Cat. Name: ${this.name}. Age: ${this.age}");
//   }
// }
//
// void testAbstractClass() {
//   Animal a = Dog("bobo", 23);
//   a.speak();
//   a = Cat("mimi", 22);
//   a.speak();
// }

// base class Animal {
//   String? name;
//   Animal(this.name);
//   void speak() {
//     print("I am animal. Name: $name");
//   }
// }
//
// // will not work in different library
// base class Dog implements Animal {
//   @override
//   String? name;
//   int? age;
//   Dog(this.name, this.age);
//   @override
//   void speak() {
//     print("I am Dog. Name: $name, Age: $age");
//   }
// }
//
// base class Cat extends Animal {
//   int? age;
//   Cat(String? name, this.age) : super(name);
//   @override
//   void speak() {
//     print("I am Cat. Name: $name, Age: $age");
//   }
// }
//
// void testBaseClass() {
//   Animal a = Dog("bobo", 23);
//   a.speak();
//   a = Cat("mimi", 22);
//   a.speak();
// }

// interface class Animal {
//   String? name;
//   Animal(this.name);
//   void speak() {
//     print("I am Animal. Name: $name");
//   }
// }
//
// class Dog implements Animal {
//   int? age;
//   @override
//   String? name;
//   Dog(this.name, this.age);
//   @override
//   void speak() {
//     print("I am Dog. Name: $name, Age: $age");
//   }
// }
// // will not work in different library
// class Cat extends Animal {
//   int? age;
//   Cat(String? name, this.age) : super(name);
//   @override
//   speak() {
//     print("I am Cat. Name: $name, Age: $age");
//   }
// }
//
// void testInterfaceClass() {
//   Animal a = Dog("bobo", 23);
//   a.speak();
//   a = Cat("mimi", 22);
//   a.speak();
// }

// abstract interface class Animal {
//   String? name;
//   Animal(this.name);
//   speak();
// }
//
// // will not work in different library
// class Dog extends Animal {
//   int? age;
//   Dog(String? name, this.age) : super(name);
//   @override
//   speak() {
//     print("I am Dog. Name: $name, Age: $age");
//   }
// }
//
// class Cat implements Animal {
//   @override
//   String? name;
//   int? age;
//   Cat(this.name, this.age);
//   @override
//   speak() {
//     print("I am Cat. Name: $name, Age: $age");
//   }
// }
//
// void testAbstractInterfaceClass() {
//   Animal a = Dog("bobo", 23);
//   a.speak();
//   a = Cat("mimi", 22);
//   a.speak();
// }

// final class Animal {
//   String? name;
//   Animal(this.name);
//   speak() {
//     print("I am Animal. Name: $name");
//   }
// }
//
// // will not work in different library
// final class Dog extends Animal {
//   int? age;
//   Dog(String? name, this.age) : super(name);
//   @override
//   speak() {
//     print("I am Dog. Name: $name, Age: $age");
//   }
// }
//
// // will not work in different library
// final class Cat implements Animal {
//   @override
//   String? name;
//   int? age;
//   Cat(this.name, this.age);
//   @override
//   speak() {
//     print("I am Cat. Name: $name, Age: $age");
//   }
// }
//
// void testFinalClass() {
//   Animal a = Dog("bobo", 23);
//   a.speak();
//   a = Cat("mimi", 22);
//   a.speak();
// }

// sealed class Animal {
//   String? name;
//   Animal(this.name);
//   speak();
// }
//
// // will not work in different library
// class Dog extends Animal {
//   int? age;
//   Dog(String? name, this.age) : super(name);
//   @override
//   speak() {
//     print("I am Dog. Name: $name, Age: $age");
//   }
// }
//
// // will not work in different library
// class Cat implements Animal {
//   @override
//   String? name;
//   int? age;
//   Cat(this.name, this.age);
//   @override
//   speak() {
//     print("I am Cat. Name: $name, Age: $age");
//   }
// }
//
// void testSealedClass() {
//   Animal a = Dog("bobo", 23);
//   a.speak();
//   a = Cat("mimi", 22);
//   a.speak();
// }

// // mixin Speakable on Object {
// mixin Speakable {
//   speak() {
//     print("I am speaking");
//   }
//
//   say();
// }
//
// class Animal with Speakable {
//   int? age;
//   Animal(this.age);
//   @override
//   say() {
//     print("I am Animal. I say 'hello world'");
//   }
// }
//
// class Person implements Speakable {
//   int? age;
//   Person(this.age);
//   @override
//   speak() {
//     print("I am Person, Speaking");
//   }
//
//   @override
//   say() {
//     print("I am Person, saying");
//   }
// }
//
// void testMixin() {
//   Speakable a = Animal(11);
//   a.speak();
//   a.say();
//   Speakable b = Person(23);
//   b.speak();
//   b.say();
// }

mixin Drinkable on Person {
  drink() {
    print("I am drinking.");
  }
}

class Person {
  String? name;
  Person(this.name);
}

class Student extends Person with Drinkable {
  int? age;
  Student(super.name, this.age);
  @override
  drink() {
    print("I am student, drinking");
  }
}

class Farmer extends Person with Drinkable {
  String? birth;
  Farmer(super.name, this.birth);
}

// class Product{
//   int? id;
//   Product(this.id);
// }
// // error
// class Computer extends Product with Drinkable{
//   String? name;
//   Computer(this.name, super.id);
// }

testMixinOn() {
  Drinkable d = Student("jame", 22);
  d.drink();
  Drinkable e = Farmer("mike", "22/1/2009");
  e.drink();
}

void main(List<String> arguments) {
  // testAbstractClass();
  // testBaseClass();
  // testInterfaceClass();
  // testAbstractInterfaceClass();
  // testFinalClass();
  // testSealedClass();
  // testMixin();
  testMixinOn();
}
