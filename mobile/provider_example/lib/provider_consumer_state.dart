import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// // For multiple providers, use MultiProvider
// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => Counter()),
//         ChangeNotifierProvider(create: (_) => AnotherCounter()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// For a single provider, use ChangeNotifierProvider
void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => Counter(), child: const MyApp()),
  );
}

class Counter extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void increment() {
    _value++;
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    // ✅ OK: read() does NOT listen
    Future.microtask(() {
      context.read<Counter>().increment();
    });
  }


  @override
  Widget build(BuildContext context) {
    print("🔄 HomePage rebuild (ONLY once)");

    return Scaffold(
      appBar: AppBar(title: const Text("Consumer Example")),
      body: Center(
        child: Consumer<Counter>(
          builder: (context, counter, child) {
            print("🟢 Consumer rebuild");
            return Text(
              "Value: ${counter.value}",
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
