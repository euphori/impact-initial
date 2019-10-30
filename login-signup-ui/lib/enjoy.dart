import 'package:flutter/material.dart';

class Enjoy extends StatefulWidget{
  static String tag = 'app-developer';
  @override
  _EnjoyState createState() => new _EnjoyState();
}

class _EnjoyState extends State<Enjoy> {
  @override
  Widget build(BuildContext context) {
    final image = Padding(
      padding: EdgeInsets.only(top: 100.0, bottom: 10.0),
      child: Image(image: AssetImage('assets/enjoy_image1.png')
      ),
    );

    final statement = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Enjoy',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final nextPage = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Enjoy())
          );
        },
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