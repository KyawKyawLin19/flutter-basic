import 'package:first_lesson/secScreens/first_screen.dart';
import 'package:first_lesson/secScreens/second_screen.dart';
import 'package:first_lesson/secScreens/third_screen.dart';
import 'package:flutter/material.dart';


class RouteList {
  static Map<String, Widget Function(BuildContext)> routeList = {
  '/first' : (context) => FirstScreen(),
  '/second' : (context) => SecondScreen(),
  '/third' : (context) => ThirdScreen(),
  };
}