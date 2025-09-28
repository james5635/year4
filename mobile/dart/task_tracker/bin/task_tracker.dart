import 'dart:convert';
import 'dart:io';
import 'package:args/args.dart';
import 'package:logging/logging.dart';

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

enum Command { add, update, delete, markInProgress, markDone, list }

Command? stringToCommand(String str) {
  switch (str) {
    case "add":
      return Command.add;
    case "update":
      return Command.update;
    case "delete":
      return Command.delete;
    case "mark-in-progress":
      return Command.markInProgress;
    case "mark-done":
      return Command.markDone;
    case "list":
      return Command.list;
    default:
      return null;
  }
}

void main(List<String> arguments) async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  final Logger logger = Logger('MyApplication');

  final filename = 'tasks.json';
  final file = File(filename);
  String contents = await file.readAsString();
  List<Task> tasks = (jsonDecode(contents) as List<dynamic>)
      .map((e) => Task.fromJson(e))
      .toList();

  var parser = ArgParser()
    ..addCommand('add')
    ..addCommand('update')
    ..addCommand('delete')
    ..addCommand('mark-in-progress')
    ..addCommand('mark-done')
    ..addCommand('list');
  ArgResults res = parser.parse(arguments);

  DateTime dt = DateTime.now();
  String now = dt.toString().replaceAll(RegExp(r"\..+"), "");

  if (stringToCommand(res.command!.name!) == Command.add) {
    if (res.command?.rest.length == 1) {
      Task newTask = Task(
        id: tasks.length,
        description: res.command!.rest[0],
        status: "todo",
        updatedAt: now,
        createdAt: now,
      );
      tasks.add(newTask);
      await file.writeAsString(JsonEncoder.withIndent(' ' * 4).convert(tasks));
      logger.info("Task added successfully (ID: ${newTask.id})");
    }
  } else if (stringToCommand((res.command?.name)!) == Command.update) {
    if (res.command?.rest.length == 2) {
      tasks.firstWhere((task) => task.id == int.parse(res.command!.rest[0]))
        ..description = res.command!.rest[1]
        ..updatedAt = now;
      await file.writeAsString(JsonEncoder.withIndent(' ' * 4).convert(tasks));
    }
  }
}
