
import 'package:flutter/material.dart';

class MyImageStackWidget extends StatelessWidget {
  const MyImageStackWidget({Key? key}) : super(key: key);

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
            Image.network("https://acortar.link/ArEijZ"),
            Container(
              height: 58,
              color: Color(0x8f151515),
              padding: EdgeInsetsDirectional.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "ProductName",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Price",
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