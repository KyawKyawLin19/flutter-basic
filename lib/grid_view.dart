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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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

Widget _userList(BuildContext context, position) {
  debugPrint('UI is building $position');
  return ListTile(
    leading: Icon(Icons.person),
    title: Text('Person $position'),
    subtitle: Text('Address $position'),
    trailing: (position % 2 == 0)? Icon(Icons.phone) : Icon(Icons.email),
    onTap: () {
      _showSnackBar(context, 'Person $position');
    },
  );
}

void _showSnackBar(BuildContext context, String text){
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(text)));
}