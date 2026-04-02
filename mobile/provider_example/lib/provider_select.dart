import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => Counter(), child: const MyApp()),
  );
}

class Counter extends ChangeNotifier {
  int _value = 0;
  int _other = 100;

  int get value => _value;
  int get other => _other;

  void increment() {
    _value++;
    notifyListeners();
  }

  void changeOther() {
    _other++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("🔄 HomePage rebuild");

    // 🟣 SELECT only 'value'
    final value = context.select<Counter, int>((c) => c.value);

    return Scaffold(
      appBar: AppBar(title: const Text("select() Example")),
      body: Center(
        child: Text("Value: $value", style: const TextStyle(fontSize: 24)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () => context.read<Counter>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () => context.read<Counter>().changeOther(),
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
