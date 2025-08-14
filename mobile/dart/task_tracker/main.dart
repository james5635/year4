import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String s = stdin.readLineSync()!;
  print("You entered: $s");
}
