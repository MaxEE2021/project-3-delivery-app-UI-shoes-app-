import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  // const MyCustomTextField({Key? key}) : super(key: key);
  final String hintText;
  final bool isPassWord;
  final TextInputType TxtOrEmail;
  final IconData? myIcon;
  final String Mylabel_helptxt;
  final Color Mylabel_helptxtColor;
  final int? MyMaxLines;

  const MyCustomTextField({
    this.hintText="", 
    this.isPassWord=false,
    this.TxtOrEmail=TextInputType.text,
    this.myIcon,//=Icons.lock_rounded,
    this.Mylabel_helptxt="",
    this.Mylabel_helptxtColor=Colors.black,
    this.MyMaxLines,
    
    });
    

  @override
  Widget build(BuildContext context) {
    if (Mylabel_helptxt==""){
      return Padding(
      padding: EdgeInsets.only(top: 12),
        child :  TextField(
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
                              prefixIcon: myIcon == null ? null: Icon(myIcon),
                                                   
                            ),
                          ),
      
    );
    }

    return Padding(
      padding: EdgeInsets.only(top: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12,),
            child: Text(
              "$Mylabel_helptxt",
              style: TextStyle(
                color: Mylabel_helptxtColor,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          TextField(
                            // textAlign: TextAlign.center,
                            autofocus: false,
                            maxLines: MyMaxLines==null ? null:MyMaxLines,
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
                              prefixIcon: myIcon == null ? null: Icon(myIcon),
                                                   
                            ),
                          ),
        ],
      ),
    );
  }
}