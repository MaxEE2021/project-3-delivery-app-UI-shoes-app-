
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/CustomWidgets/CustomButton.dart';
import 'package:my_store_app/CustomWidgets/CustomTextField.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 18, right: 18,),
          child: ListView(
            children: [
              Container(    //image an black title
              // color: Colors.deepPurple,
              height: 200, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://acortar.link/ArEijZ",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "MyStore.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ), 
              ),
              Container(
                height: 230,
                child: Expanded(
                  child: Container( //email, pasword, login_button
                  padding: EdgeInsets.symmetric(vertical: 8,),
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyCustomTextField(
                          hintText: 'Email Address',
                          TxtOrEmail: TextInputType.emailAddress,
                          myIcon: Icons.email_outlined
                        ),
                        MyCustomTextField(
                          hintText: 'Password',
                          isPassWord: true,
                          myIcon: Icons.lock_outline_rounded
                        ),
                        MyCustomButton(
                          MyString: "Login",
                          Mycolor: Colors.black87,
                        ),
                
                        
                      ],
                    ),
                  ),
                ),
              ),
              Container( // createNewAccountBtn and socialImagesbtns
              child: Column(
                children: [
                  TextButton(
                    onPressed: (){
                      print("New Account created");
                      Get.to(() => MyNewAccountScreen());
                    },
                    child: Text(
                      "Create New Account",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 55,
                          // color: Colors.red,
                          child: TextButton(
                            onPressed: (){print("Facebook was pressed");},
                            child: Image.network("https://acortar.link/Cmpv9S"),
                          ),
                        ),
                        Container(
                          height: 50,
                          // color: Colors.red,
                          child: TextButton(
                            onPressed: (){print("Google was pressed");},
                            child: Image.network("https://acortar.link/gAKnvo"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}




// https://acortar.link/Cmpv9S     icon facebook
// https://acortar.link/gAKnvo    googl
// https://acortar.link/8STj9D      googl