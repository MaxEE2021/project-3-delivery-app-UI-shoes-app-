
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/CustomWidgets/CustomButton.dart';
import 'package:my_store_app/CustomWidgets/CustomTextField.dart';
import 'package:my_store_app/Screens/HomeScreen.dart';
import 'package:my_store_app/Screens/NewAccountScreen.dart';

class LogIn_Screen extends StatefulWidget {
  LogIn_Screen({Key? key}) : super(key: key);

  @override
  _LogIn_ScreenState createState() => _LogIn_ScreenState();
}

class _LogIn_ScreenState extends State<LogIn_Screen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "MyStore",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: MyLogInPage(),
  
      
    );
  }
}




// https://acortar.link/Cmpv9S     icon facebook
// https://acortar.link/gAKnvo    googl
// https://acortar.link/8STj9D      googl

class MyLogInPage extends StatefulWidget {
  MyLogInPage({Key? key}) : super(key: key);

  @override
  _MyLogInPageState createState() => _MyLogInPageState();
}

class _MyLogInPageState extends State<MyLogInPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 200,
            // color: Colors.blueGrey,
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    "https://acortar.link/ArEijZ",
                  ),
                ),
              ],
            ),
          ),




          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:15),
              child: ListView(
                children: [

                  MyCustomTextField(
                          hintText: 'Email Address',
                          myIcon: Icons.email_outlined,
                          TxtOrEmail: TextInputType.emailAddress,
                          // Mylabel_helptxt: "Email address",
                        ),
                  MyCustomTextField(
                          hintText: 'Pasword',
                          myIcon: Icons.lock_outlined,
                          TxtOrEmail: TextInputType.text,
                          isPassWord: true,
                          // Mylabel_helptxt: "Mobile Number",
                          // Mylabel_helptxtColor: Colors.green,
                        ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MyCustomButton(
                      MyString: "Login",
                      Mycolor: Colors.black,
                      MyOnpreessed: (){
                        Get.to(() => MyHomeScreen());
                      },
                    ),
                  ),

                    Container(
                      // color: Colors.red,
                    // login  and socialImagesbtns
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            print("CreateNewAcount Pressed");
                            Get.to(() => MyNewAccountScreen());
                          },
                          child: Text(
                            "Create New Account",
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // color: Colors.teal,
                              height: 55,
                              child: TextButton(
                                child: Image.network(
                                  "https://acortar.link/Cmpv9S",
                                ),
                                onPressed: 
                                () => print("Facebook Was Pressed"),
                              ),
                            ),
                            Container(
                              // color: Colors.blue,
                              height: 50,
                              child: TextButton(
                                child: Image.network(
                                  "https://acortar.link/8STj9D",
                                ),
                                onPressed: 
                                () => print("Google Was Pressed"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              
              
                  
                ],
              ),
            ),
          ),
          
        ],
      );
  }
}