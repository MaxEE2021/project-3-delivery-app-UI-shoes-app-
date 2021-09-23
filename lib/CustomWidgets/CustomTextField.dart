import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  // const MyCustomTextField({Key? key}) : super(key: key);
  final String hintText;
  final bool isPassWord;
  final TextInputType TxtOrEmail;
  final IconData? myIcon;


  const MyCustomTextField({
    this.hintText="", 
    this.isPassWord=false,
    this.TxtOrEmail=TextInputType.text,
    this.myIcon,//=Icons.lock_rounded,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
                      // textAlign: TextAlign.center,
                      autofocus: false,
                      obscureText: false == isPassWord ? false:true,
                      keyboardType: TxtOrEmail == TextInputType.text ? TextInputType.text : TxtOrEmail,
                      style: TextStyle(
                        color: Colors.black
                      ),
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade300,
                        filled: true,  
                        prefixIcon: Icon(myIcon == null ? null:myIcon),
                                             
                      ),
                    );
  }
}