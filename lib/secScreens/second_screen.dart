import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // int valueFromFirstScreen = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(valueFromFirstScreen.toString()),
            ElevatedButton(
              child: const Text('Go To First Screen'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Go To Third Screen'),
            )
          ],
        ),
      ),
    );
  }
}
