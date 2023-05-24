import 'package:first_lesson/screens/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'),),
      body: Center(
        child: ElevatedButton(
          child: Text('Go To Second Screen'),
          onPressed: () async{
            final data = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(data: 'data from first screen')));
                // .then((value) => ScaffoldMessenger.of(context)
                //   .showSnackBar(SnackBar(content: Text(value))));
            if(data != null) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(data)));
            }
          },
        ),
      ),
    );
  }
}
