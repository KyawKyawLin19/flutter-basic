import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async{
                var secondData = await Navigator.pushNamed(context, '/second', arguments: 123);
                debugPrint(secondData.toString());
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
