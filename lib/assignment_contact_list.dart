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

  final List<Person> _personList = [

  Person('https://randomuser.me/api/portraits/lego/0.jpg', 'Boo Boo', '@booboo'),

  Person('https://randomuser.me/api/portraits/lego/1.jpg', 'Kyaw Kyaw', '@kyawkyaw'),

  Person('https://randomuser.me/api/portraits/lego/2.jpg', 'Tun Tun', '@tuntun'),

  Person('https://randomuser.me/api/portraits/lego/3.jpg', 'John Doe', '@johndoe'),

  Person('https://randomuser.me/api/portraits/lego/4.jpg', 'Aung Aung', '@aungaung'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.flutter_dash),
        title: const Text('Contact List',style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _personList.length,
        itemBuilder: (context, index) {
          return _userItem(context, index);
        },
      )
    );
  }

  Widget _userItem(BuildContext context, position) {
    Person person = _personList[position];
    return ListTile(
      leading: CircleAvatar(
          backgroundImage: NetworkImage(person.photo),
          radius: 30,
      ),
      title: Text(person.name),
      subtitle: Text(person.userName),
      trailing: ElevatedButton(onPressed: () {

      }, child: Text('Follow')),
    );
  }
}



class Person {
  final String photo;
  final String name;
  final String userName;

  Person(this.photo, this.name, this.userName);
}
