// just install emulator, platform-tools, and system-images
// let flutter install anything else for you
//
// platforms;android-35 doesn't mean it only use with system-images;android-35
// it can be use with other system-images

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 172, 149),
          title: Center(child: Text("Profile Card")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                // backgroundImage: NetworkImage(
                //   "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
                // ),
                backgroundImage: AssetImage(
                  'assets/images/Gemini_Generated_Image_hjr4mlhjr4mlhjr4.png',
                ),
              ),
              Text(
                "Sou Chanrojame",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                "Mobile Developer",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomWidget(text: "Posts", count: "152"),
                  SizedBox(width: 50),
                  const CustomWidget(text: "Followers", count: "1.2K"),
                  SizedBox(width: 50),
                  const CustomWidget(text: "Following", count: "180"),
                ],
              ),
              SizedBox(height: 40),
              const CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String _text;
  final String _count;
  const CustomWidget({super.key, required String text, required String count})
    : _text = text,
      _count = count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _count,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          _text,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool _isFollow = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _isFollow = !_isFollow;
        });
      },

      style: ElevatedButton.styleFrom(
        backgroundColor: _isFollow ? Colors.green : Colors.blue,
        minimumSize: Size(200, 100),
      ),
      child: Text(
        _isFollow ? "Following" : "Follow",
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
