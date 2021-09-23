import 'package:flutter/material.dart';


class MyCustomButton extends StatelessWidget {
  // const MyCustomButton({Key? key}) : super(key: key);
  final Color Mycolor;
  final String MyString;

  const MyCustomButton ({
    this.Mycolor=Colors.green,
    this.MyString="Button",

  });

  @override
  Widget build(BuildContext context) {
    return Row(   ///this row is just to cover all the widht of the botton
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Mycolor,
                                ),
                                onPressed: (){},
                                child: Text(
                                  MyString,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
  }
}