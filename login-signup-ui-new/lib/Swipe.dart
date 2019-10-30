import 'package:flutter/material.dart';
import 'package:login/app_developer.dart';
import 'package:login/home_page.dart';
import 'package:login/enjoy.dart';
import 'package:page_indicator/page_indicator.dart';

void main() => runApp(Swipe());

class Swipe extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AppDeveloper.tag: (context) => AppDeveloper(),
    Enjoy.tag: (context) => Enjoy(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: PageIndicatorContainer(
          pageView: PageView(
          children: [
          HomePage(),
            AppDeveloper(),
            Enjoy(),
    ],
    ),
    align: IndicatorAlign.bottom,
    length: 3,
    indicatorSpace: 20.0,
    padding: const EdgeInsets.all(30),
    indicatorColor: Colors.white,
    indicatorSelectorColor: Colors.blueAccent,
    shape: IndicatorShape.circle(size: 12),
// shape: IndicatorShape.roundRectangleShape(size: Size.square(12),cornerSize: Size.square(3)),
// shape: IndicatorShape.oval(size: Size(12, 8)),
        ),
      routes: routes,
    );
  }
}
