

import 'package:flutter/material.dart';
import 'package:my_store_app/CustomWidgets/CustomItemOrderWidget.dart';

class MyManageOrderScreen extends StatefulWidget {
  MyManageOrderScreen({Key? key}) : super(key: key);

  @override
  _MyManageOrderScreenState createState() => _MyManageOrderScreenState();
}

class _MyManageOrderScreenState extends State<MyManageOrderScreen> {

   List<Widget> _myItemsWidgetList = [
    ItemOrderWidget(
      MyOrderID: "#F45G6SDGF16D5G",
      MyOrderDate: "04-JUN-2021",
      MyOrderDetail: "N° items - \$ total",
      MyOrderStatus: "COMPLETED",
    ),
    ItemOrderWidget(
      MyOrderID: "#sd54f65ds4fs5d",
      MyOrderDate: "24-OCT-2020",
      MyOrderDetail: "N° items - \$ total",
      MyOrderStatus: "COMPLETED",
    ),
    ItemOrderWidget(
      MyOrderID: "#F45D64FS6DF1S65FS",
      MyOrderDate: "16-SEP-2021",
      MyOrderDetail: "N° items - \$ total",
      MyOrderStatus: "IN PROCESS",
    ),
    ItemOrderWidget(
      MyOrderID: "#DAFD4FS6AFDS464",
      MyOrderDate: "04-JUN-2021",
      MyOrderDetail: "N° items - \$ total",
      MyOrderStatus: "IN PROCESS",
    ),
    ItemOrderWidget(
      MyOrderID: "#DAFD4FS6AFDS464",
      MyOrderDate: "04-JUN-2021",
      MyOrderDetail: "N° items - \$ total",
      MyOrderStatus: "COMPLETED",
    ),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Manage Orders"),
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

