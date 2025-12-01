---
title: "**Dart Programming Quiz Answer**"
author: [Sou Chanrojame]
date: "\\today"
# keywords: [Markdown, Example]
# mainfont: "Source Sans 3"
header-includes:
  - \lstdefinestyle{dart}{showstringspaces=false,language=Java,basicstyle=\ttfamily\small,keywordstyle=\color{blue}\bfseries,stringstyle=\color{red},commentstyle=\color{gray}\itshape,numbers=none,breaklines=true,frame=single,backgroundcolor=\color{gray!10}}
  - \lstset{style=dart}

---


# Part 1: Multiple Choice Questions (MCQ)

1. C
2. C
3. B
4. B
5. A
6. B
7. C
8. A
9. A
10. 1
11. B
12. C
13. B
14. A
15. A
16. B
17. A
18. A
19. A
20. A
21. C
22. A
23. B
24. A
25. A
26. B
27. C
28. B
29. A
30. C
31. B
32. A
33. A
34. A
35. A
36. A

# Part 2: Exercises

## E1

```dart
int factorial(int n){
  if (n == 0) return 1;
  return n * factorial(n-1);
}
```

```dart
int factorial(int n) => n == 0 ? 1 : n * factorial(n-1);
```
## E2

```dart
void main(){
  int x = [1,2,3,4];
  int max = x.reduce((a,b) => a > b ? a : b);
  print(max);
}

```
```dart
import 'dart:math'
void main(){
  int x = [1,2,3,4];
  int max = x.reduce(max);
  print(max);
}

```

```dart
// bonus: finding sum
void main(){
  int x = [1,2,3,4];
  int sum = x.reduce((a,b) => a+b);
  print(sum);
}

```

## E3
```dart
class Person{
  String name;
  int age;
  Person(this.name, this.age);
  void introduce() => print("Hi, my name is $name and I am $age year old.");
}

```
## E4

```dart
bool isPalindrome(String s) {
  int n = s.length;
  for (int i = 0; i < n ~/ 2; i++) {
    if (s[i] != s[n - i - 1]) {
      return false;
    }
  }
  return true;
}
```

## E5
```dart
List<int> reverseList(List<int> list) {
  return list.reversed.toList();
}
```

## E6

```dart
int countVowels(String input) {
  final vowels = {'a', 'e', 'i', 'o', 'u'};
  int count = 0;

  for (var char in input.toLowerCase().runes) {
    var letter = String.fromCharCode(char);
    if (vowels.contains(letter)) {
      count++;
    }
  }

  return count;
}

void main() {
  String text = "Hello, World!";
  int vowelCount = countVowels(text);
  print("Number of vowels: $vowelCount"); // Output: Number of vowels: 3
}
```

## E7
```dart
class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate the area
  double area() {
    return width * height;
  }
}

void main() {
  // Example usage
  Rectangle rect = Rectangle(5.0, 3.0);
  print("Area: ${rect.area()}"); // Output: Area: 15.0
}

```

## E8

```dart
int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  int n = 10;
  print("The $n-th Fibonacci number is: ${fibonacci(n)}");
  // Output: The 10-th Fibonacci number is: 55
}


```

## E9
```dart
void main() {
  List<String> words = ["banana", "apple", "orange", "grape", "kiwi"];

  // Sort the list alphabetically
  words.sort();

  print("Sorted list: $words");
  // Output: Sorted list: [apple, banana, grape, kiwi, orange]
}

```

## E10
```dart
class BankAccount {
  double balance;

  // Constructor
  BankAccount(this.balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0) {
      if (balance >= amount) {
        balance -= amount;
        print("Withdrew: \$${amount.toStringAsFixed(2)}");
      } else {
        print("Insufficient balance.");
      }
    } else {
      print("Withdrawal amount must be positive.");
    }
  }

  // Method to display the current balance
  void displayBalance() {
    print("Current balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Example usage
  BankAccount account = BankAccount(100.0);
  account.deposit(50.0);
  account.withdraw(30.0);
  account.displayBalance();
  // Output:
  // Deposited: $50.00
  // Withdrew: $30.00
  // Current balance: $120.00
}


```

## E11
```dart
List<T> removeDuplicates<T>(List<T> list) {
  final seen = <T>{};
  final result = <T>[];

  for (var item in list) {
    if (!seen.contains(item)) {
      seen.add(item);
      result.add(item);
    }
  }

  return result;
}

void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print(uniqueNumbers); // Output: [1, 2, 3, 4, 5]

  List<String> words = ["apple", "banana", "apple", "orange"];
  List<String> uniqueWords = removeDuplicates(words);
  print(uniqueWords); // Output: [apple, banana, orange]
}

```

## E12

```dart
void main() {
  List<double> numbers = [10.0, 20.0, 30.0, 40.0, 50.0];

  if (numbers.isEmpty) {
    print("The list is empty.");
    return;
  }

  double sum = numbers.reduce((a, b) => a + b);
  double average = sum / numbers.length;

  print("Average: ${average.toStringAsFixed(2)}");
  // Output: Average: 30.00
}

```
## E13

```dart
class Car {
  String brand;
  int year;

  // Constructor
  Car(this.brand, this.year);

  // Override the toString() method
  @override
  String toString() {
    return 'Car{brand: $brand, year: $year}';
  }
}

void main() {
  // Example usage
  Car myCar = Car("Toyota", 2020);
  print(myCar); // Output: Car{brand: Toyota, year: 2020}
}

```
## E14
```dart

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  if (number == 2) {
    return true;
  }
  if (number.isEven) {
    return false;
  }

  // Check divisibility up to the square root of the number
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int num = 17;
  if (isPrime(num)) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
  // Output: 17 is a prime number.
}

```