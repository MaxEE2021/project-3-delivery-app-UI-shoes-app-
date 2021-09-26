import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/Screens/InnerScreens/EditAddress.dart';


class MyItemAddressWidget extends StatelessWidget {
  const MyItemAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "502, south street. NewYork apartment 705 inside Number 402 ",
                      style: TextStyle(
                        color: Colors.black45
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                alignment: Alignment.center,
                // color: Colors.amber,
                width: 40,
                height: 55,
                child: IconButton(
                  splashRadius: 25,
                  onPressed: (){
                    Get.to(() => MyEditAdreesPage());
                  },
                  icon: Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}