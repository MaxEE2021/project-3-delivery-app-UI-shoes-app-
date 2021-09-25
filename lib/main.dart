import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/Screens/AcountScreen.dart';
import 'package:my_store_app/Screens/CartScreen.dart';
import 'package:my_store_app/Screens/HomeScreen.dart';
import 'package:my_store_app/Screens/InnerScreens/EditProfileScreen.dart';
import 'package:my_store_app/Screens/LoginScreen.dart';

void main() => runApp(MyStoreApp());

class MyStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      // home: LogIn_Screen()
      home: MyHomeScreen(),
      // home: MyEditProfileScreen()
      // home: Scaffold(
      //   appBar: AppBar(),
      //   // body: MyCartScreen(),
      //   // body: MyAccountScreen(),
      //   // body: MyEditProfileScreen(),
      // )
    );
  }
}
