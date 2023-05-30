import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';

class MyStorage {
  final SharedPreferences sharedPreferences;
  MyStorage(this.sharedPreferences);

  void saveString({required String key, required String? value}){
    if(value != null) {
      sharedPreferences.setString(key, value);
    }
  }

  String getString(String key){
    return sharedPreferences.getString(key) ?? '';
  }

  void saveBool({required String key, required bool value}){
    sharedPreferences.setBool(key, value);
  }

  bool getBool(String key) {
    return sharedPreferences.getBool(key) ?? false;
  }

  void remove(String key) {
    sharedPreferences.remove(key);
  }

  Future<void> clearAll() async{
    await sharedPreferences.clear();
  }

}