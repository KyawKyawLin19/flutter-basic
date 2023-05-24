import 'package:first_lesson/screens/first_screen.dart';
import 'package:first_lesson/screens/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.data),
            ElevatedButton(
              child: Text('Go To First Screen'),
              onPressed: (){
                Navigator.pop(context, 'data from second screen');
              },
            ),
            ElevatedButton(
              child: Text('Go To Third Screen'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
