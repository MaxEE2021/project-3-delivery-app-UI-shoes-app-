
import 'package:flutter/material.dart';
import 'package:my_store_app/CustomWidgets/CustomButton.dart';
import 'package:my_store_app/CustomWidgets/CustomCart_Item.dart';

class MyCartScreen extends StatefulWidget {
  MyCartScreen({Key? key}) : super(key: key);

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  static const double _PaddingGeneral =8;

  List<Widget> _myItemsWidgetList = [
    myCartItemListElemetWidget(
      ItemImg: "https://acortar.link/21EZel",
      ItemPrice: 25,
    ),
    myCartItemListElemetWidget(
      ItemImg: "https://acortar.link/21EZel",
      ItemPrice: 25,
    ),
    myCartItemListElemetWidget(
      ItemImg: "https://acortar.link/21EZel",
      ItemPrice: 25,
    ),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:_PaddingGeneral, right: _PaddingGeneral, left: _PaddingGeneral),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _myItemsWidgetList.length,
              itemBuilder: (BuildContext context, int index) {
                return _myItemsWidgetList[0];
              },
            ),
          ),

          
          Container(
            height: 170,
            // color: Colors.orange,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery Address",
                              style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Direction ckdlkds",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: (){print("Change btn Pressed");},
                        child: Text(
                          "Change",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery Address",
                              style: TextStyle(
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Direction ckdlkds",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: (){print("Change btn Pressed");},
                        child: Text(
                          "Change",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),



          MyCustomButton(
            Mycolor: Colors.black87,
            MyString: "Check Out (\$ Price)",
          )

        ],
      ),
    );
  }
}