import 'package:first_lesson/const/route_list.dart';
import 'package:first_lesson/secScreens/first_screen.dart';
import 'package:first_lesson/secScreens/main_screen.dart';
import 'package:first_lesson/secScreens/second_screen.dart';
import 'package:first_lesson/secScreens/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Home()
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Route',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme:  ThemeData.light().copyWith(
        navigationBarTheme: NavigationBarThemeData(

        )
      ),
    );
  }
}
