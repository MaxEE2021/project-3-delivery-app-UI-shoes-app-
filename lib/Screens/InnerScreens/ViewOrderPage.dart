import 'package:flutter/material.dart';

class MyViewOrderPage extends StatelessWidget {
  // const MyViewOrderPage({Key? key}) : super(key: key);
  List<Widget> MyProductList=[
    
       ViewOrderItemWidget(
        MainText: "PRODUCT1",
        DescriptionText: "Qty: 1x \$ 100.0",
        InfText: "\$ 200",
        
      ),
      ViewOrderItemWidget(
        MainText: "PRODUCT2",
        DescriptionText: "Qty: 1x \$ 100.0",
        InfText: "\$ 100",
  
      ),
      ViewOrderItemWidget(
        MainText: "PRODUCT3",
        DescriptionText: "Qty: 1x \$ 100.0",
        InfText: "\$ 310",
        
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("ViewOrder"),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.purple,
                        height: 230,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ViewOrderItemWidget(
                              MainText: "Customer",
                              DescriptionText: "SUNDAR",
                              InfText: "Call",
                              InfTextColor: Colors.blue.shade800,
                            ),
                            ViewOrderItemWidget(
                              MainText: "Order",
                              DescriptionText: "27-JUN-2021 08:55",
                              InfText: "#OrderID",
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "PROCESS",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                
                              ],
                            ),

                            ViewOrderItemWidget(
                              MainText: "Delivery",
                              DescriptionText: "ADDRESS",
                              InfText: "COD",
                            ),
                          ],
                        ),

                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Text(
                          "CART ITEMS",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),


                      Expanded(
                        child: ListView.builder(
                          itemCount: MyProductList.length,
                          itemBuilder: (BuildContext context, int index) {
                            // return MyProductList[index];
                            return Padding(
                              padding: EdgeInsets.only(bottom: 25),
                              child: MyProductList[index]
                            );
                          },
                        ),
                      ),


                    
                   
                    
                    ],
                  ),
                ),
              ),




              Container(
                height: 80,
                color: Colors.blue.shade800,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$Price",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}






class ViewOrderItemWidget extends StatelessWidget {
  // const ViewOrderItemWidget({Key? key}) : super(key: key);
  final String MainText;
  final String DescriptionText;
  final String InfText;
  final Color? InfTextColor;

  const ViewOrderItemWidget ({
    this.MainText="",
    this.DescriptionText="",
    this.InfText="",
    this.InfTextColor,
  });

  
  @override
  Widget build(BuildContext context) {
    return Row(  //here begins the item
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  MainText,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                              Text(
                                DescriptionText,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12
                                ),
                              ),
                            ],
                          ),
                          Text(
                            InfText,
                            style: TextStyle(
                              color: InfTextColor == null ? Colors.black:InfTextColor,
                              fontSize: 16
                            ),
                          )
                        ],
                      );
  }
}