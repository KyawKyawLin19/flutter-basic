import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData.light().copyWith(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.green)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigo)
          ),
        )
      ),
    )
  );
}

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _info = '';

  @override
  Widget build(BuildContext context) {
    bool _showPassword = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
        leading: const Icon(Icons.text_fields),
        actions: const [
          Icon(Icons.settings)
        ],
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Enter Your Name',

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Enter Your Age',
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    obscureText: _showPassword,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Enter Your Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon : Icon(Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  const TextField(
                    maxLines: 6,
                    decoration: InputDecoration(
                        labelText: 'Enter Your Address',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_info,style: const TextStyle(fontSize: 20,color: Colors.black),),
                  ),
                  OutlinedButton(onPressed: () {
                      setState(() {
                        _info = "Name is ${_nameController.text} \n Phone is ${_phoneController.text} \n Password is ${_passwordController.text}";
                      });
                  }, child: const Text('Generate Profile'))
                ],
              ),
            ),
          )
      ),
    );
  }
}
