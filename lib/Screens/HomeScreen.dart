import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_app/CustomWidgets/CustomBtnTag.dart';
import 'package:my_store_app/CustomWidgets/CustomCarousel.dart';
import 'package:my_store_app/CustomWidgets/ImageStackContainer.dart';
import 'package:my_store_app/Screens/AcountScreen.dart';
import 'package:my_store_app/Screens/CartScreen.dart';
import 'package:my_store_app/Screens/LoginScreen.dart';


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
  List<String> _AppBarTitles = [
    "Home",
    "Cart",
    "Account",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_AppBarTitles[_BotmNavBarCurrentIndex]),
        backgroundColor: Colors.blue.shade800,
      ),

      body: _BNBIdex[_BotmNavBarCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade800,
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
  List MyTagList =[
    MyCustomTagBtn(
      TagTXT: "New",
      TagColor: Colors.blue.shade800,
      MyonPressed: (){print("You pressed tag New");},
    ),
    MyCustomTagBtn(
      TagTXT: "Ladies",
      TagColor: Colors.blue.shade800,
      MyonPressed: (){print("You pressed tag Ladies");},
    ),
    MyCustomTagBtn(
      TagTXT: "Kids",
      TagColor: Colors.blue.shade800,
      MyonPressed: (){print("You pressed tag Kids");},
    ),
    MyCustomTagBtn(
      TagTXT: "Gentleman",
      TagColor: Colors.blue.shade800,
      MyonPressed: (){print("You pressed tag Gentleman");},
    ),
    MyCustomTagBtn(
      TagTXT: "Sports",
      TagColor: Colors.blue.shade800,
      MyonPressed: (){print("You pressed tag Sports");},
    ),
    MyCustomTagBtn(
      TagTXT: "Elegant",
      TagColor: Colors.blue.shade800,
      MyonPressed: (){print("You pressed tag Elegant");},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            // color: Colors.yellow,
            child: MyCarouselImageWidget(),
          ),



          Container(
            height: 50,
            // color: Colors.purple,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: MyTagList.length,
              itemBuilder: (BuildContext context, int index) {
                return MyTagList[index];
              },
            ),
          ),



          Container(
            height: 298,
            child: GridView.count(
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              crossAxisCount: 2,
              children: <Widget> [
                MyImageStackWidget(
                  ProductImg: "https://acortar.link/CuE9Hb",
                  MyBtnColor: Colors.blue.shade800,
                ),
                MyImageStackWidget(
                  ProductImg: "https://acortar.link/sE6MAf",
                  MyBtnColor: Colors.blue.shade800,
                ),
                MyImageStackWidget(
                  ProductImg: "https://acortar.link/21EZel",
                  MyBtnColor: Colors.blue.shade800,
                ),
                MyImageStackWidget(
                  ProductImg: "https://acortar.link/rYmTpG",
                  MyBtnColor: Colors.blue.shade800,
                ),
              ],
            ),
          ),
        ],
      );
  }
}


