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
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/background.png'),
              Positioned(
                left: 40,
                child: Image.asset('assets/light-1.png')
              ),
              Positioned(
                left: 160,
                child: Image.asset('assets/light-2.png')
              ),
              Positioned(
                top: 120,
                right: 50,
                child: Image.asset('assets/clock.png')
              ),
            ]),
          Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email or Phone number',
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 17)
                    ),
                  ),
                  Divider(),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey,fontSize: 17),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    obscureText: true,
                    
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(143, 148, 251, 1),
                    Color.fromRGBO(143, 148, 251, .6),
                  ])
            ),
            child: Center(child: const Text('Login',style: TextStyle(color: Colors.white,fontSize: 17))),
          )
        ],
      ),
    );
  }
}
