import 'package:logging/logging.dart';
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
  hierarchicalLoggingEnabled = true;
  Logger.root.level = Level.WARNING;
  Logger.root.onRecord.listen((record) {
    print('[ROOT][WARNING+] ${record.message}');
  });

  final log1 = Logger('FINE+');
  log1.level = Level.FINE;
  log1.onRecord.listen((record) {
    print('[LOG1][FINE+] ${record.message}');
  });

  // log2 inherits LEVEL value of WARNING from `Logger.root`
  final log2 = Logger('WARNING+');
  log2.onRecord.listen((record) {
    print('[LOG2][WARNING+] ${record.message}');
  });

  // Will NOT print because FINER is too low level for `Logger.root`.
  log1.finer('LOG_01 FINER (X)');

  // Will print twice ([LOG1] & [ROOT])
  log1.fine('LOG_01 FINE (√√)');
  print("-----------");
  // Will print ONCE because `log1` only uses root listener.
  log1.warning('LOG_01 WARNING (√)');
  print("-----------");

  // Will never print because FINE is too low level.
  log2.fine('LOG_02 FINE (X)');

  // Will print twice ([LOG2] & [ROOT]) because warning is sufficient for all
  // loggers' levels.
  log2.warning('LOG_02 WARNING (√√)');
  print("-----------");

  // Will never print because `info` is filtered by `Logger.root.level` of
  // `Level.WARNING`.
  log2.info('INFO (X)');
  
}
