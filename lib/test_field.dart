import 'package:first_lesson/storage/my_shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(sharedPreferences: _sharedPreferences),
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
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.blue)
          ),
          errorStyle: TextStyle(color: Colors.blue)
        )
      ),
    )
  );
}

class Home extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  const Home({super.key, required this.sharedPreferences});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? _name, _password, _address, _phone;
  bool _showPassword = false;
  bool _reading = false;
  bool _football = false;
  String _rdoMale = "Male";
  String _rdoFemale = "Female";
  String _groupValue = '';
  bool _openJob = false;
  String _info = '';
  final GlobalKey<FormState> _formKey = GlobalKey();
  late final MyStorage _myStorage = MyStorage(widget.sharedPreferences);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setupData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
        leading: const Icon(Icons.text_fields),
        actions: [
          IconButton(onPressed: () async{
            await _myStorage.clearAll();
            setState(() {
              _setupData();
            });
          }, icon: Icon(Icons.delete))
        ],
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      initialValue: _name,
                      validator: (str) {
                        if( str == null || str.trim().isEmpty ) {
                          return 'Please Enter Your Name';
                        }
                      },
                      onSaved: (str) {
                        _name = str;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Enter Your Name',

                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      initialValue: _phone,
                      validator: (str) {
                        if( str == null || str.trim().length < 5 ) {
                          return 'Please Enter at least 5 number';
                        }
                      },
                      onSaved: (str) {
                        _phone = str;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Enter Your Age',
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      initialValue: _password,
                      validator: (str) {
                        if( str == null || str.trim().length < 8 ) {
                          return 'Please Enter at least 8 number';
                        }
                      },
                      onSaved: (str) {
                        _password = str;
                      },
                      obscureText: _showPassword,
                      decoration:  InputDecoration(
                        labelText: 'Enter Your Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon : Icon(_showPassword? Icons.visibility : Icons.visibility_off),
                          onPressed: (){
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      initialValue: _address,
                      validator: (str) {
                        if( str == null || str.trim().isEmpty ) {
                          return 'Please Enter Address';
                        }
                      },
                      onSaved: (str) {
                        _address = str;
                      },
                      maxLines: 6,
                      decoration: const InputDecoration(
                          labelText: 'Enter Your Address',
                          prefixIcon: Icon(Icons.map),
                      ),
                    ),
                    SizedBox(height: 10,),
                    CheckboxListTile(
                      checkColor: Colors.blue,
                      activeColor: Colors.white,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text('Reading'),
                      value: _reading,
                      onChanged: (bool? isCheck) {
                        setState(() {
                          if(isCheck !=null) {
                            _reading = isCheck;
                          }
                        });
                    },),
                    CheckboxListTile(
                      checkColor: Colors.blue,
                      activeColor: Colors.white,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text('Football'),
                      value: _football,
                      onChanged: (bool? isCheck) {
                        setState(() {
                          if(isCheck !=null) {
                            _football = isCheck;
                          }
                        });
                      },),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Male'),
                        Radio(
                          value: _rdoMale,
                          groupValue: _groupValue,
                          fillColor: MaterialStateProperty.resolveWith((states) {
                            if(states.contains(MaterialState.selected)) {
                              return Colors.green;
                            }
                            return Colors.indigo;
                          }),
                          onChanged: (String? value) {
                          if(value != null) {
                            setState(() {
                              _groupValue = value;
                            });
                          }
                        },)
                      ],
                    ),
                    Row(
                      children: [
                        Text('Female'),
                        Radio(
                          value: _rdoFemale,
                          groupValue: _groupValue,
                          fillColor: MaterialStateProperty.resolveWith((states)
                          {
                            if(states.contains(MaterialState.selected)){
                              return Colors.green;
                            }
                            return Colors.indigo;
                          }),
                          onChanged: (String? value) {
                          if(value != null) {
                            setState(() {
                              _groupValue = value;
                            });
                          }
                        },)
                      ],
                    ),
                    SwitchListTile.adaptive(
                        value: _openJob,
                        activeColor: Colors.green,
                        activeTrackColor: Colors.blue,
                        inactiveThumbColor: Colors.blue,
                        inactiveTrackColor: Colors.green,
                        activeThumbImage: AssetImage('assets/clock.png'),
                        onChanged: (isOpen) {
                          setState(() {
                            _openJob = isOpen;
                          });
                        },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_info,style: const TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                    OutlinedButton(onPressed: () {
                      if(_formKey.currentState != null ){
                        _formKey.currentState?.save();
                        if(_formKey.currentState!.validate()){
                          _myStorage.saveString(key: 'name', value: _name);
                          _myStorage.saveString(key: 'phone', value: _phone);
                          _myStorage.saveString(key: 'password', value: _password);
                          _myStorage.saveString(key: 'address', value: _address);
                          _myStorage.saveBool(key: 'reading', value: _reading);
                          _myStorage.saveBool(key: 'football', value: _football);
                          _myStorage.saveString(key: 'gender', value: _groupValue);
                          _myStorage.saveBool(key: 'job', value: _openJob);

                          setState(() {
                            _info = "Name is ${_name} \n Phone is ${_phone} \n Password is ${_password} \n Address is ${_address} \n ${hobbies()} \n Gender is ${_groupValue} \n ";
                          });
                        }
                      }
                    }, child: const Text('Generate Profile'))
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

  String hobbies() {
    String h = "Hobbies are";
    if(_reading) {
      h = "$h Reading";
      if(_football) {
        h = "$h, ";
      }
    }
    if(_football) {
      h = "$h Football";
    }
    return h;
  }

  void _setupData() {
    _name = _myStorage.getString('name');
    _password = _myStorage.getString('password');
    _phone = _myStorage.getString('phone');
    _address = _myStorage.getString('address');
    _reading = _myStorage.getBool('reading');
    _football = _myStorage.getBool('football');
    _groupValue = _myStorage.getString('gender');
    _openJob = _myStorage.getBool('job');
  }
}
