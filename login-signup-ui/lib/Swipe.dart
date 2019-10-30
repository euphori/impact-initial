import 'package:flutter/material.dart';
import 'package:login/app_developer.dart';
import 'package:login/home_page.dart';
import 'package:login/enjoy.dart';

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
      home: PageView(
        children: <Widget>[
          HomePage(),
          AppDeveloper(),
          Enjoy(),
        ],
      ),
      routes: routes,
    );
  }
}
