import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
import 'package:my_store_app/CustomWidgets/CustomButton.dart';
import 'package:my_store_app/CustomWidgets/CustomTextField.dart';

class MyNewAccountScreen extends StatelessWidget {
  const MyNewAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0000000),
        title: Text(
          "Create New Account",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
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
                          hintText: 'Name',
                          myIcon: Icons.person,
                          TxtOrEmail: TextInputType.text,
                          // Mylabel_helptxt: "Email address",
                        ),
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
                      MyString: "Register",
                      Mycolor: Colors.black,
                    ),
                  ),

                    Container(
                      // color: Colors.red,
                    // login  and socialImagesbtns
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            print("AHnA pressed");
                          },
                          child: Text(
                            "Already Have an account?",
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
      ),
    );
  }
}