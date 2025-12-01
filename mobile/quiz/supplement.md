# Read file

### Synchronous File Reading

```dart
import 'dart:io';

void main() {
  try {
    // Replace 'example.txt' with your file path
    File file = File('example.txt');
    String contents = file.readAsStringSync();
    print("File contents (sync):\n$contents");
  } catch (e) {
    print("Error reading file: $e");
  }
}

```

### Asynchronous File Reading

```dart
import 'dart:io';

Future<void> main() async {
  try {
    // Replace 'example.txt' with your file path
    File file = File('example.txt');
    String contents = await file.readAsString();
    print("File contents (async):\n$contents");
  } catch (e) {
    print("Error reading file: $e");
  }
}

```

### Reading Line by Line

```dart
import 'dart:io';

Future<void> main() async {
  try {
    // Replace 'example.txt' with your file path
    File file = File('example.txt');
    Stream<String> lines = file.openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter());

    await for (var line in lines) {
      print("Line: $line");
    }
  } catch (e) {
    print("Error reading file: $e");
  }
}

```

## Write file

### Synchronous File Writing

```dart
import 'dart:io';

void main() {
  try {
    // Replace 'example.txt' with your file path
    File file = File('example.txt');
    file.writeAsStringSync('Hello, Dart!\nThis is a new line.');
    print("File written synchronously.");
  } catch (e) {
    print("Error writing file: $e");
  }
}

```

### Asynchronous File Writing

```dart
import 'dart:io';

Future<void> main() async {
  try {
    // Replace 'example.txt' with your file path
    File file = File('example.txt');
    await file.writeAsString('Hello, Dart!\nThis is a new line.');
    print("File written asynchronously.");
  } catch (e) {
    print("Error writing file: $e");
  }
}

```

### Appending to a File

```dart
import 'dart:io';

Future<void> main() async {
  try {
    // Replace 'example.txt' with your file path
    File file = File('example.txt');
    await file.writeAsString('New line to append.\n', mode: FileMode.append);
    print("Text appended to file.");
  } catch (e) {
    print("Error writing file: $e");
  }
}

```

### Writing Line by Line

```dart
import 'dart:io';

Future<void> main() async {
  try {
    // Replace 'example.txt' with your file path
    IOSink sink = File('example.txt').openWrite(mode: FileMode.append);
    sink.writeln('First line');
    sink.writeln('Second line');
    await sink.flush();
    await sink.close();
    print("Lines written to file.");
  } catch (e) {
    print("Error writing file: $e");
  }
}

```

## Encode json

Encode object (map, list, custom object, ...) to string

### Encoding a Map to JSON

```dart
import 'dart:convert';

void main() {
  // Example Map
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 30,
    'isStudent': false,
    'courses': ['Math', 'Science', 'History'],
  };

  // Encode the Map to a JSON string
  String jsonString = jsonEncode(person);
  print(jsonString);
  // Output: {"name":"Alice","age":30,"isStudent":false,"courses":["Math","Science","History"]}
}

```

### Encoding a List to JSON

```dart
import 'dart:convert';

void main() {
  // Example List
  List<Map<String, dynamic>> people = [
    {'name': 'Alice', 'age': 30},
    {'name': 'Bob', 'age': 25},
  ];

  // Encode the List to a JSON string
  String jsonString = jsonEncode(people);
  print(jsonString);
  // Output: [{"name":"Alice","age":30},{"name":"Bob","age":25}]
}
```

### Encoding a Custom Object to JSON

```dart
import 'dart:convert';

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  // Convert the object to a Map
  // toJson() mean make the object to Map
  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}

void main() {
  // Create an object
  Person person = Person('Alice', 30);

  // Convert to Map and then encode to JSON
  String jsonString = jsonEncode(person.toJson());
  print(jsonString);
  // Output: {"name":"Alice","age":30}
}

```

## Decode json

Decode string to object (map, list, custom object, ...)

### Decoding JSON into a Map

```dart
import 'dart:convert';

void main() {
  String jsonString = '{"name": "Alice", "age": 30, "isStudent": false}';

  // Decode the JSON string into a Map
  Map<String, dynamic> person = jsonDecode(jsonString);
  print(person['name']); // Output: Alice
  print(person['age']);  // Output: 30
}

```

### Decoding JSON into a List

```dart
import 'dart:convert';

void main() {
  String jsonString = '[{"name": "Alice"}, {"name": "Bob"}]';

  // Decode the JSON string into a List
  List<dynamic> people = jsonDecode(jsonString);
  print(people[0]['name']); // Output: Alice
}

```

### Decoding JSON into a Custom Object

```dart
import 'dart:convert';

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  // Factory constructor may return a new/cache instance of its type/subtype
  // fromJson() mean make the Map to object 
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['age']);
  }
}

void main() {
  String jsonString = '{"name": "Alice", "age": 30}';

  // Decode the JSON string into a Map, then convert to Person
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  Person person = Person.fromJson(jsonMap);

  print(person.name); // Output: Alice
  print(person.age);  // Output: 30
}

```

### Decoding a List of Custom Objects

```dart
import 'dart:convert';

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);


  // Factory method to create a Person from a Map
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['age']);
  }
}

void main() {
  String jsonString = '[{"name": "Alice", "age": 30}, {"name": "Bob", "age": 25}]';

  // Decode the JSON string into a List of Maps, then convert to List<Person>
  List<dynamic> jsonList = jsonDecode(jsonString);
  List<Person> people = jsonList.map((json) => Person.fromJson(json)).toList();

  print(people[0].name); // Output: Alice
  print(people[1].name); // Output: Bob
}

```
