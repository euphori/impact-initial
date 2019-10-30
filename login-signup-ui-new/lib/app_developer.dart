import 'package:flutter/material.dart';

class AppDeveloper extends StatefulWidget{
  static String tag = 'app-developer';
  @override
  _AppDeveloperState createState() => new _AppDeveloperState();
}

class _AppDeveloperState extends State<AppDeveloper> {
  @override
  Widget build(BuildContext context) {
    final image = Padding(
        padding: EdgeInsets.only(top: 90.0, bottom: 10.0),
        child: Image(image: AssetImage('assets/sitting-2.png')
        ),
    );

    final statement = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Sample app made for developers around the world.',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final nextPage = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('Next Page', style: TextStyle(color: Colors.white)),
      ),
    );

    final body = Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlue, Colors.white]
        ),
      ),
      child: Column(
        children: <Widget>[image, statement],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
