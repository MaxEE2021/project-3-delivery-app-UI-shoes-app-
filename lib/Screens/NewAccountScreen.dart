import 'package:flutter/material.dart';
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
                height: 280,
                child: Column(
                  children: [
                    Expanded(
                      child: Container( //email, pasword, login_button
                      padding: EdgeInsets.symmetric(vertical: 8,),
                        // color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MyCustomTextField(
                              hintText: 'Full Name',
                              TxtOrEmail: TextInputType.name,
                            ),
                            MyCustomTextField(
                              hintText: 'Email Address',
                              TxtOrEmail: TextInputType.emailAddress,
                            ),
                            MyCustomTextField(
                              hintText: 'Password',
                              isPassWord: true,
                            ),
                            MyCustomButton(
                              MyString: "Register",
                              Mycolor: Colors.black87,
                            ),
                    
                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container( // createNewAccountBtn and socialImagesbtns
              child: Column(
                children: [
                  TextButton(
                    onPressed: (){
                      print("AHnA btn Was Pressed");
                      // Get.to(MyNewAccountScreen());
                    },
                    child: Text(
                      "Already have an account ?",
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