import 'package:flutter/material.dart';


class ItemOrderWidget extends StatelessWidget {
  const ItemOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: EdgeInsets.symmetric(vertical: 2),
      child: TextButton(
        onPressed: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "#8d85fhdk8785shfks",
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
                    "COMPLETED",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "04-june-2021",
                  style: TextStyle(
                    color: Colors.grey.shade700
                  ),
                ),
                Text(
                  "N° items - total",
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