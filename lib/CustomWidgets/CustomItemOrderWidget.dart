import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/Screens/InnerScreens/ViewOrderPage.dart';


class ItemOrderWidget extends StatelessWidget {
  // const ItemOrderWidget({Key? key}) : super(key: key);

  final String MyOrderID;
  final String MyOrderDate;
  final String MyOrderDetail;
  final String MyOrderStatus;

  const ItemOrderWidget ({
    this.MyOrderID="#5465165160",
    this.MyOrderDate="04-Jun-2021",
    this.MyOrderDetail="N° items - \$ total",
    this.MyOrderStatus="COMPLETED",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.symmetric(vertical: 2),
      child: TextButton(
        onPressed: () => Get.to(() => MyViewOrderPage()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    MyOrderID,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // color: Colors.amber,
                  width: 100,
                  child: Text(
                    MyOrderStatus,
                    style: TextStyle(
                      color: MyOrderStatus=="COMPLETED" ? Colors.green:Colors.black ,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MyOrderDate,
                  style: TextStyle(
                    color: Colors.grey.shade700
                  ),
                ),
                Text(
                  MyOrderDetail,
                  style: TextStyle(
                    color: Colors.grey.shade700
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}