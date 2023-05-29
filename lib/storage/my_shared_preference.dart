import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class MyStorage {
  Future<SharedPreferences> _sharedPreferences () async {
    return await SharedPreferences.getInstance();
  }

  void saveString({required String key, required String value}) async{
    SharedPreferences sharedPreferences = await _sharedPreferences();
    sharedPreferences.setString(key, value);
  }

  Future<String> getString(String key) async{
    SharedPreferences sharedPreferences = await _sharedPreferences();
    return sharedPreferences.getString(key) ?? '';
  }

  void saveBool({required String key, required bool value}) async{
    SharedPreferences sharedPreferences = await _sharedPreferences();
    sharedPreferences.setBool(key, value);
  }

  Future<bool> getBool(String key) async {
    SharedPreferences sharedPreferences = await _sharedPreferences();
    return sharedPreferences.getBool(key) ?? false;
  }

}