import 'package:flutter/material.dart';

void main() {
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
        title: const Text('Grid Builder'),
        leading: const Icon(Icons.grid_4x4_sharp),
        actions: const [
          Icon(Icons.settings)
        ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(4),
          itemCount: 99,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 1/2,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(3),
              color: Colors.amberAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Person $index'),
                  Divider(color: Colors.blue,),
                  Icon(Icons.person),
                  Divider(color: Colors.blue,),
                  ElevatedButton(onPressed: (){
                    _showSnackBar(context, "You followed person $index");
                  }, child: Text('Follow'))
                  
                ],
              ),
            );
          },
      ),
    );
  }
}

void _showSnackBar(BuildContext context, String text){
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(text)));
}