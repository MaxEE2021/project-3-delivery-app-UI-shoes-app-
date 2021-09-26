import 'package:flutter/material.dart';
import 'package:my_store_app/CustomWidgets/CustomTextField.dart';

class MyEditAdreesPage extends StatefulWidget {
  final String MyTitle;
  MyEditAdreesPage({Key? key,this.MyTitle=""}) : super(key: key);

  

  @override
  _MyEditAdreesPageState createState() => _MyEditAdreesPageState();
}

class _MyEditAdreesPageState extends State<MyEditAdreesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text(widget.MyTitle == "" ? "Edit Address": widget.MyTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              icon: Icon(Icons.ac_unit),
              splashRadius: 20,
              // splashColor: Colors.blueGrey,
              onPressed: (){},
            ),
          )
        ], 
      ),
      body: Column(
        children: [
          Container(
            height: 220,
            // color: Colors.blueGrey,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://acortar.link/IQrZJS")
                ),
            ),
          ),




          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [

                  MyCustomTextField(
                          hintText: 'Tag',
                          TxtOrEmail: TextInputType.emailAddress,
                          Mylabel_helptxt: "Tag (E.g 'Home, Office')",
                        ),
                  MyCustomTextField(
                          hintText: 'Place Name',
                          TxtOrEmail: TextInputType.emailAddress,
                          Mylabel_helptxt: "Name",
                        ),
                  MyCustomTextField(
                          hintText: 'Phone Number',
                          TxtOrEmail: TextInputType.number,
                          Mylabel_helptxt: "Mobile Number",
                          Mylabel_helptxtColor: Colors.green,
                        ),
                  MyCustomTextField(
                          // hintText: 'Place Name',
                          TxtOrEmail: TextInputType.text,
                          Mylabel_helptxt: "Full Address",
                          MyMaxLines: 3,
                        ),
              
                  
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}