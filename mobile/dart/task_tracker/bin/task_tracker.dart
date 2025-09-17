import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';

class Task {
  late int id;
  late String description;
  late String status;
  late String createdAt;
  late String updatedAt;
  Task({
    required this.id,
    required this.description,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json["id"],
      description: json["description"],
      status: json["status"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
    );
  }
}

void main(List<String> arguments) async {
  // Task task1 = Task(
  //   id: 1,
  //   description: "a",
  //   status: "b",
  //   createdAt: "c",
  //   updatedAt: "d",
  // );
  // Task task2 = Task(
  //   id: 1,
  //   description: "a",
  //   status: "b",
  //   createdAt: "c",
  //   updatedAt: "d",
  // );
  // final fn = 'tasks.json';
  // final file = File(fn);
  // List<Task> tasks = [task1, task2];

  // String s = jsonEncode(tasks);
  // try {
  //   await file.writeAsString(s);
  // } catch (e) {
  //   print(e);
  // }
  final filename = 'tasks.json';
  final file = File(filename);
  String contents = await file.readAsString();
  List<Task> tasks = jsonDecode(contents);
  
  var parser = ArgParser();
  var cmd = parser.addCommand('add');
  ArgResults res = parser.parse(arguments);

  if (res.command?.rest.length == 1) {
    Task newTask = Task(id: tasks.length, description: (res.command?.rest[0])!, updatedAt:  )
    tasks.add()
  }
}
