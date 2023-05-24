import 'package:first_lesson/screens/first_screen.dart';
import 'package:first_lesson/screens/second_screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Go back To First Screen'),
              onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> FirstScreen()), (route) => false);
              },
            ),
            ElevatedButton(
              child: Text('Go back To Second Screen'),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
