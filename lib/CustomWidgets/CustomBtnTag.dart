import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class MyCustomTagBtn extends StatelessWidget {
  // const MyCustomTagBtn({Key? key}) : super(key: key);

  final String TagTXT;
  final Color? TagColor;
  final VoidCallback? MyonPressed;

  const MyCustomTagBtn ({
    this.TagTXT="EditableTag",
    this.TagColor,
    this.MyonPressed,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: null == TagColor ? Colors.grey: TagColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
        ),
        onPressed: null == MyonPressed ?  (){print("add a MyonPressed function to the widget");} : MyonPressed,
        child: Text(TagTXT)),
    );
  }
}