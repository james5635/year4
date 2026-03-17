import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final prefs = await SharedPreferences.getInstance();
  final isDark = prefs.getBool("dark_mode") ?? false;

  runApp(MyApp(initialThemeMode: isDark ? ThemeMode.dark : ThemeMode.light));
}

class MyApp extends StatefulWidget {
  final ThemeMode initialThemeMode;

  const MyApp({super.key, required this.initialThemeMode});

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void setThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  void initState() {
    super.initState();
    _themeMode = widget.initialThemeMode;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyLoginPage(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      routes: {"/settings": (context) => SettingPage()},
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _isRememberMe = false;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _email.text = prefs.getString("email") ?? "";
      _password.text = prefs.getString("password") ?? "";
      _isRememberMe = prefs.getBool("remember_me") ?? false;

      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        actions: [
          IconButton(
            onPressed: () async {
              await Navigator.pushNamed(context, "/settings");

              _load();
            },
            icon: Icon(Icons.settings),
          ),
          SizedBox(width: 50),
        ],
      ),
      body: Center(
        // in the middle of the parent.
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: _email,
                decoration: InputDecoration(labelText: "Email"),
                onChanged: (value) async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString("email", value);
                },
              ),
              TextField(
                controller: _password,
                decoration: InputDecoration(labelText: "Password"),
                onChanged: (value) async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString("password", value);
                },
              ),
              Row(
                children: [
                  Switch(
                    value: _isRememberMe,
                    onChanged: (value) async {
                      setState(() {
                        _isRememberMe = value;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool("remember_me", value);
                    },
                  ),
                  Text("Remember Me"),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingPageState();
  }
}

class SettingPageState extends State<SettingPage> {
  bool _isDarkMode = false;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = prefs.getBool("dark_mode") ?? false;

      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dark Mode"),

            Switch(
              value: _isDarkMode,
              onChanged: (value) async {
                setState(() {
                  _isDarkMode = value;
                });
                MyApp.of(
                  context,
                ).setThemeMode(value ? ThemeMode.dark : ThemeMode.light);
                final prefs = await SharedPreferences.getInstance();
                await prefs.setBool("dark_mode", value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
