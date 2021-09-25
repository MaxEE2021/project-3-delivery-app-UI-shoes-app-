
import 'package:flutter/material.dart';
import 'package:my_store_app/CustomWidgets/CustomBtnTag.dart';

class myCartItemListElemetWidget extends StatefulWidget {
  // myCartItemListElemetWidget({Key? key}) : super(key: key);
  final String ItemImg;
  final String ItemName;
  final double? ItemPrice;
  final String ItemTotalPrice;
  // final int ItemQuantity;


  const myCartItemListElemetWidget ({
    this.ItemImg = "https://acortar.link/CuE9Hb",
    this.ItemName ="Product Name",
    this.ItemPrice,
    this.ItemTotalPrice ="00.00",
    // this.ItemQuantity = 1,
  });

  @override
  _myCartItemListElemetWidgetState createState() => 
  _myCartItemListElemetWidgetState();
}

class _myCartItemListElemetWidgetState extends State<myCartItemListElemetWidget> {
  
  // final String ItemImg="https://acortar.link/CuE9Hb";
  // final String ItemName ="Product Name";
  late double? ItemPrice =00.00;
  int ItemQuantity = 1;
  final String ItemTotalPrice ="00.00";
  
  void PriceConst(){
    widget.ItemPrice == null ? ItemPrice:ItemPrice=widget.ItemPrice ;
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 12),
            color: Colors.red,
            height: 45,
            width: 45,
            child: Image.network(
              "${widget.ItemImg}",
              // ItemImg,
              fit: BoxFit.fill,
            ),
          ),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.ItemName}",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text("Qty $ItemQuantity x \$ $ItemPrice",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),


          Container(
            // color: Colors.red,
            width: 115,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // color: Colors.purple,
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape:CircleBorder( )
                    ),
                    onPressed: (){setState(() {
                      ItemQuantity--;
                    });},
                    child: Icon(Icons.remove, size: 18,),
                  ),
                ),

                Text("$ItemQuantity"),


                Container(
                  width: 50,
                  height: 25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape:CircleBorder( )
                    ),
                    onPressed: () => setState((){ItemQuantity++;}),
                    child: Icon(Icons.add, size: 18,),
                  ),
                ),
              ],
            ),
          ),


          Container(
            // color: Colors.yellow,
            width: 75,
            child: Center(
              child: Text(
                "\$ Price",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
