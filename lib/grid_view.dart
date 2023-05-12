import 'package:flutter/material.dart';

void main(){
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
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.grid_4x4),
        title: const Text('Grid View'),
        actions: const [
          Icon(Icons.settings)
        ],
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            childAspectRatio: 2/1
          ),
          padding: EdgeInsets.all(8),
          children: [
            for(int i = 0; i < 20; i++)
              ElevatedButton(onPressed: (){

              },
              child: Text('Grid $i'),)
          ],
      ),
    );
  }
}