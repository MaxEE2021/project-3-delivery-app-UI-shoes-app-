

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/Screens/InnerScreens/EditProfileScreen.dart';
import 'package:my_store_app/Screens/InnerScreens/ManageOrdersScreen.dart';

class MyAccountScreen extends StatefulWidget {
  MyAccountScreen({Key? key}) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool SWstate=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.all(10),
      child: Column(
        children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  // color: Colors.redAccent,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage("https://acortar.link/UBpmfw"),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    // color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "User Name",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Text(
                          "9988998656",
                          style: TextStyle(
                            color: Colors.grey.shade700
                          ),
                        ),
      
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 40,
                  // color: Colors.redAccent,
                  child: TextButton(
                            onPressed: (){
                            print("edit profile pressed");
                            Get.to(() => MyEditProfileScreen());
                          },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: Colors.blue.shade900
                              ),
                            ),
                          ),
                ),
              ],
            ),


            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  // color: Colors.redAccent,
                  child: Icon(Icons.alarm_add ,size: 35,),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    // color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Notifications",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Text(
                          "Turn on/off notifications",
                          style: TextStyle(
                            color: Colors.grey.shade700
                          ),
                        ),
      
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  width: 80,
                  height: 40,
                  // color: Colors.redAccent,
                  child: Switch(
                    activeColor: Colors.blue.shade900,
                    value: SWstate, onChanged: (state){
                    setState(() {
                      SWstate = state;
                    });
                  }),
                ),
              ],
            ),


            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  // color: Colors.redAccent,
                  child: Icon(Icons.shopping_bag_outlined, size: 35,),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    // color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My orders",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Text(
                          "Manage Orders",
                          style: TextStyle(
                            color: Colors.grey.shade700
                          ),
                        ),
      
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  width: 80,
                  height: 40,
                  // color: Colors.redAccent,
                  child: IconButton(
                    onPressed: (){
                            print("Manage Orders pressed");
                            Get.to(() => MyManageOrderScreen());
                          }, 
                    icon: Icon(Icons.arrow_forward)
                  ),
                ),
              ],
            ),



            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  // color: Colors.redAccent,
                  child: Icon(Icons.house, size: 35,),
                ),
                Expanded(
                  child: Container(
                    height: 60,
                    // color: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My address",
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Text(
                          "Manag Delivery Address",
                          style: TextStyle(
                            color: Colors.grey.shade700
                          ),
                        ),
      
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  width: 80,
                  height: 40,
                  // color: Colors.redAccent,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.arrow_forward)
                  ),
                ),
              ],
            ),

        ],
      ) ,
    );
  }
}

// class AccountWidgets extends StatelessWidget {
//   const AccountWidgets({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           // width: 50,
//           color: Colors.red,
//           padding: const EdgeInsets.only(right: 10 ),
//           child: CircleAvatar(
//             backgroundImage: NetworkImage("https://acortar.link/UBpmfw"),
//             radius: 24,
//           ),
//         ),
//         Container(
//           color: Colors.cyan,
//           width: 260,
//           child: Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("User Name"),
//                 Text("+529889568478")
//               ],
//             ),
//           ),
//         ),
        // TextButton(
        //   onPressed: (){},
        //   child: Text(
        //     "Edit",
        //     style: TextStyle(
        //       color: Colors.cyan
        //     ),
        //   ),
        // ),
//       ],
//     );
//   }
// }

