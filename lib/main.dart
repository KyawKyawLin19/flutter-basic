import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        leading: const Icon(Icons.ac_unit_sharp),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      // body: const Center(
      //     child: Text(
      //   'hello world',
      //   style: TextStyle(
      //       color: Colors.blue,
      //       fontFamily: 'Bruno Ace Sc',
      //       fontWeight: FontWeight.w600,
      //       fontSize: 20),
      // )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/antarctica.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.asset(
                'assets/desserts.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.asset(
                'assets/winter.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.network(
                'https://www.wellahealth.com/blog/wp-content/uploads/2021/09/6-ways-to-stay-healthy-during-the-rainy-season.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.asset(
                'assets/antarctica.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.asset(
                'assets/desserts.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.asset(
                'assets/winter.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              Image.network(
                'https://www.wellahealth.com/blog/wp-content/uploads/2021/09/6-ways-to-stay-healthy-during-the-rainy-season.jpg',
                width: 300,
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(color: Colors.blue, border: Border.all(color: Colors.white), borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',style: TextStyle(color: Colors.white,fontFamily: 'Bruno Ace Sc'),),
              ),
              RichText(text: TextSpan(children: [
                TextSpan(text: 'H',style: TextStyle(color: Colors.red)),
                TextSpan(text: 'e',style: TextStyle(color: Colors.red)),
              ]))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        debugPrint('click button');
      },child: Icon(Icons.add),),
    );
  }
}
