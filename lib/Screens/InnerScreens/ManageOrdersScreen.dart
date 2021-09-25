

import 'package:flutter/material.dart';
import 'package:my_store_app/CustomWidgets/CustomItemOrderWidget.dart';

class MyManageOrderScreen extends StatefulWidget {
  MyManageOrderScreen({Key? key}) : super(key: key);

  @override
  _MyManageOrderScreenState createState() => _MyManageOrderScreenState();
}

class _MyManageOrderScreenState extends State<MyManageOrderScreen> {

   List<Widget> _myItemsWidgetList = [
    ItemOrderWidget(),
    ItemOrderWidget(),
    ItemOrderWidget(),
    ItemOrderWidget(),
    ItemOrderWidget(),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: _myItemsWidgetList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _myItemsWidgetList[index];
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

