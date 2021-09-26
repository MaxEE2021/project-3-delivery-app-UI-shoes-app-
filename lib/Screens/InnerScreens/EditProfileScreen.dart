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
            child: Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage("https://acortar.link/UBpmfw"),
              ),
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
                          TxtOrEmail: TextInputType.emailAddress,
                          // Mylabel_helptxt: "Name", 
                        ),
                  MyCustomTextField(
                          hintText: 'Email Address',
                          myIcon: Icons.email_outlined,
                          TxtOrEmail: TextInputType.emailAddress,
                          // Mylabel_helptxt: "Email address",
                        ),
                  MyCustomTextField(
                          hintText: 'Phone Number',
                          myIcon: Icons.phone,
                          TxtOrEmail: TextInputType.number,
                          // Mylabel_helptxt: "Mobile Number",
                          // Mylabel_helptxtColor: Colors.green,
                        ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MyCustomButton(
                      MyString: "Save Changes",
                      Mycolor: Colors.black,
                    ),
                  ),

                    Container(
                    // createNewAccountBtn and socialImagesbtns
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
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
          
        ],
      ),
      
    );
  }
}




