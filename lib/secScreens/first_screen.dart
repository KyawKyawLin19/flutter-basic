import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async{
                await Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go To Second Screen'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go To Thrid Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
