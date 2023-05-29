import 'package:first_lesson/secScreens/first_screen.dart';
import 'package:first_lesson/secScreens/second_screen.dart';
import 'package:first_lesson/secScreens/third_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _bodyList = [FirstScreen(), SecondScreen(), ThirdScreen()];
  Widget _bodyWidget = const FirstScreen();
  String _title = 'Home';
  Widget _icon = Icon(Icons.home);
  int _selectedIndex = 0;

  List<String> _titleList = ['Home', 'Join', 'Setting'];
  List<Widget> _iconList = [Icon(Icons.home), Icon(Icons.video_call), Icon(Icons.settings)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: _icon,
      ),
      body: _bodyWidget,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
            _bodyWidget = _bodyList[index];
            _title = _titleList[index];
            _icon = _iconList[index];
          });
        },
        selectedIndex: _selectedIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.video_call), label: 'Join'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}
