
import 'package:flutter/material.dart';

class MyImageStackWidget extends StatelessWidget {
  // const MyImageStackWidget({Key? key}) : super(key: key);
  final String ProductName;
  final String ProductPrice;
  final String ProductImg;
  final Color? MyBtnColor;

  const MyImageStackWidget ({
    this.ProductName = "productName",
    this.ProductPrice = "\$ 00.00",
    this.ProductImg = "https://acortar.link/ArEijZ",
    this.MyBtnColor = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.red,
        height: 500,
        width: 220,
        child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.network(ProductImg),
            Container(
              height: 58,
              color: Color(0x8f151515),
              padding: EdgeInsetsDirectional.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(bottom: 8,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ProductName,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ProductPrice,
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: MyBtnColor,
                          minimumSize: Size(35, 30)
                        ),
                        onPressed: (){}, 
                        child: Icon(
                          Icons.add,
                          size: 16,
                        ), 
                        
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}