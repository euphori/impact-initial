import 'package:flutter/material.dart';
import 'package:login/Slide.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
//          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome First Name',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
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
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlue, Colors.white]
        ),
      ),
      child: Column(
        children: <Widget>[welcome, nextPage],
      ),
    );

    return Scaffold(
      body: body,
      drawer: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Container(
          width: 380.0,
          child: new Drawer(
            child: new ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                  child: Text("Explore Categories",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("All Listing",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("Contests",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("Lucky Draw",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("Promotions",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("Sweepstakes",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("Featured",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("What's Hot",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new ListTile(
                    title: new Text("Others",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: new Icon(Icons.arrow_right),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 250.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30.0,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Every city has a unique vibe with plenty interesting finds waiting to be discovered. Lucky Village - contests, deals and promotions is here to provide you with the lates fresh happening in and around town on a variety of things.",
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, right: 15.0, left: 15.0, bottom: 15.0),
                  child: Text("Get Lucky and win more!",
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Container(
                  width: 1000,
                  height: 70,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Copyright 2018",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                            Text("Lucky Village - Contests and Promotions",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Row(
                            children: <Widget>[
                              Center(
                                child: Text("Powered by",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ),
                              Center(
                                child: Text("Hessedevotion",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
