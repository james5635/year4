import 'package:task_tracker/task_tracker.dart';
import 'package:test/test.dart';
import "dart:math";
class Dog {
  int? _age;
  String? _name;
  int? get age => _age! + 10;
  set age(int? value) {
    print("hji");
    _age = 10;
    _name = "j";
  }
}

void main() {
  sqrt(10);
  // test('calculate', () {
  //   expect(calculate(), 42);
  // });
}
