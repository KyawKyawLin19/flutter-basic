import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View1'),
        leading: Icon(Icons.list),
      ),
      body: ListView.separated(
          itemBuilder: (context, position) {
            return _userList(context, position);
          },
          separatorBuilder: (context, position) {
            if( position % 2 == 0) {
              return const Divider(color: Colors.blue,thickness: 2,);
            } else {
              return const Divider(color: Colors.green,thickness: 2,);
            }
          },
          itemCount: 100
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

