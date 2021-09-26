
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/CustomWidgets/CustomAdrresWidget.dart';
import 'package:my_store_app/CustomWidgets/CustomItemOrderWidget.dart';
import 'package:my_store_app/Screens/InnerScreens/EditAddress.dart';

class MyManageAddressesScreen extends StatefulWidget {
  MyManageAddressesScreen({Key? key}) : super(key: key);

  @override
  _MyManageOrderScreenState createState() => _MyManageOrderScreenState();
}

class _MyManageOrderScreenState extends State<MyManageAddressesScreen> {

   List<Widget> _myItemsWidgetList = [
    MyItemAddressWidget(),
    MyItemAddressWidget(),
   
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Manage Addresses"),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue.shade800,
        onPressed: (){
          Get.to(() => MyEditAdreesPage(MyTitle: "Add Address",));
        }
      ),
    );
  }
}
