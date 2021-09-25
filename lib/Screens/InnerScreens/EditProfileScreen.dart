import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/CustomWidgets/CustomButton.dart';
import 'package:my_store_app/CustomWidgets/CustomTextField.dart';
import 'package:my_store_app/Screens/LoginScreen.dart';


class MyEditProfileScreen extends StatefulWidget {
  MyEditProfileScreen({Key? key}) : super(key: key);

  @override
  _MyEditProfileScreenState createState() => _MyEditProfileScreenState();
}

class _MyEditProfileScreenState extends State<MyEditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(
          "Edit Profile",
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
              height: 150, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CircleAvatar(
                      radius: 65,
                      backgroundImage: NetworkImage("https://acortar.link/UBpmfw"),
                    ),
                  ),
                ],
              ), 
              ),
              Container(
                // color: Colors.brown,
                height: 320,
                child: Expanded(
                  child: Container( //email, pasword, login_button
                  padding: EdgeInsets.symmetric(vertical: 8,),
                    // color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyCustomTextField(
                          hintText: 'Full Name',
                          TxtOrEmail: TextInputType.text,
                          myIcon: Icons.person
                        ),
                        MyCustomTextField(
                          hintText: 'Email Address',
                          TxtOrEmail: TextInputType.emailAddress,
                          myIcon: Icons.email_outlined
                        ),
                        MyCustomTextField(
                          hintText: 'Mobile Number',
                          TxtOrEmail: TextInputType.number,
                          myIcon: Icons.phone
                        ),
                        


                        MyCustomButton(
                          MyString: "SaveChanges",
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
                      print("You Log Out");
                      Get.to(() => LogIn_Screen());
                    },
                    child: Text(
                      "Log out",
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




