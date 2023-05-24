import 'package:first_lesson/screens/first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      )
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}
