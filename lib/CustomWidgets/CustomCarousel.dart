import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "https://acortar.link/5C7Lqc",
  "https://acortar.link/4Y2rjj",
  "https://acortar.link/TeWS51",
  "https://acortar.link/3xMWy1",
  "https://acortar.link/i8Ie77",
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
      // width: 250,
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.fill, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          "",
                          // 'N°. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class MyCarouselImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            height: 190,
            // aspectRatio: 2.2,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
    );
  }
}