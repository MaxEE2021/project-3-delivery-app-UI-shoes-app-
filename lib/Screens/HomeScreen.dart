import 'package:flutter/material.dart';
import 'package:my_store_app/CustomWidgets/ImageStackContainer.dart';
import 'package:my_store_app/Screens/AcountScreen.dart';
import 'package:my_store_app/Screens/CartScreen.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  
  int _BotmNavBarCurrentIndex=0;
  List<Widget> _BNBIdex = [
    HomePageWidget_screen(),
    MyCartScreen(),
    MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _BNBIdex[_BotmNavBarCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _BotmNavBarCurrentIndex = index;
          });
        },
        currentIndex: _BotmNavBarCurrentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ]
      ),
    );
  }
}





class HomePageWidget_screen extends StatefulWidget {
  HomePageWidget_screen({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget_screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 120,
            color: Colors.blueGrey,
          ),
          Container(
            height: 120,
            color: Colors.purple,
          ),
          Container(
            height: 298,
            child: GridView.count(
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              crossAxisCount: 2,
              children: <Widget> [
                MyImageStackWidget(),
                MyImageStackWidget(),
                MyImageStackWidget(),
                MyImageStackWidget(),
              ],
            ),
          ),
        ],
      );
  }
}

// height: 160,
//         width: 220,
//          MyImageStackWidget(),