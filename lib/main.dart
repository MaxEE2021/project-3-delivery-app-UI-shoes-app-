import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/Screens/LoginScreen.dart';

void main() => runApp(MyStoreApp());

class MyStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: LogIn_Screen()
    );
  }
}
