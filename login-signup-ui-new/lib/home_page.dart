import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:login/login_page.dart';
import 'package:flutter_rating/flutter_rating.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  double rating = 0;
  int starCount = 5;

  @override
  Widget build(BuildContext context) {
    final ratings_and_reviews_title = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
        'RATINGS AND REVIEWS',
        style: TextStyle(fontSize: 15.0, color: Colors.blueGrey),
      ),
    );

    final ratings = Padding(
      padding: EdgeInsets.only(top: 25.0, bottom: 20.0),
      child: Text(
        'RATINGS',
        style: TextStyle(fontSize: 25.0, color: Colors.blueGrey),
      ),
    );

    final restaurants = Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Text(
            'Restaurants',
            style: TextStyle(fontSize: 18.0, color: Colors.orangeAccent),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '4.5',
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
          ),
        ),
      ],
    );

    final hotels_living_space = Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Text(
            'Hotels/Living Space',
            style: TextStyle(fontSize: 18.0, color: Colors.green),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '5.0',
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
          ),
        ),
      ],
    );

    final hospitality = Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Text(
            'Hospitality',
            style: TextStyle(fontSize: 18.0, color: Colors.red),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '4.0',
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
          ),
        ),
      ],
    );

    final transportation = Row(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Text(
            'Transportation',
            style: TextStyle(fontSize: 18.0, color: Colors.pinkAccent),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            '3.0',
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey),
          ),
        ),
      ],
    );

    final reviews = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Text(
        'REVIEWS',
        style: TextStyle(fontSize: 25.0, color: Colors.blueGrey),
      ),
    );

    final addButton = Padding(
      padding: EdgeInsets.only(left: 200.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('ADD', style: TextStyle(color: Colors.white)),
        onPressed: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => Add()));
        },
      ),
    );

    final person = Row(
      children: [
        Image(
          image: AssetImage('assets/alucard.jpg'),
          width: 50,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 20),
              child: Text(
                'Ardel Unknown',
                style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0, left: 15),
              child: Text(
                'Brgy Villamonte, Spice Kitchen',
                style: TextStyle(fontSize: 12.0, color: Colors.blueGrey),
              ),
            ),
            StarRating(
              size: 25.0,
              rating: rating,
              color: Colors.orange,
              borderColor: Colors.grey,
              starCount: starCount,
            ),
          ],
        ),
      ],
    );

    final comment = Padding(
      padding: EdgeInsets.only(right: 10.0, top: 10.0),
      child: Text(
        'I went there and I liked it very much. Awesome!I went there'
        'and I liked it very much. Awesome!'
        'I went there and I liked it very much. Awesome!'
        'I went there and I liked it very much',
        style: TextStyle(fontSize: 12.0, color: Colors.blueGrey),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[
          ratings_and_reviews_title,
          ratings,
          restaurants,
          hotels_living_space,
          hospitality,
          transportation,
          reviews,
          addButton,
          person,
          comment,
          SizedBox(height: 50),
          person,
          comment,
          SizedBox(height: 50),
          person,
          comment
        ],
      ),
    );

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

//    final body = Container(
//      width: MediaQuery.of(context).size.width,
//      padding: EdgeInsets.all(28.0),
//      decoration: BoxDecoration(
//        gradient: LinearGradient(colors: [
//          Colors.purpleAccent,
//          Colors.blue,
//        ]),
//      ),
//      child: Column(
//        children: <Widget>[alucard, welcome],
//      ),
//    );

    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.blueGrey),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            width: 35.0,
            child: IconButton(
              icon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.blueGrey,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Container(
          width: 320.0,
          child: new Drawer(
            child: new ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                  child: Text(
                    "Welcome First Name",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new FlatButton(
                    child: ListTile(
                      title: new Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onPressed: () {
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new FlatButton(
                    child: ListTile(
                      title: new Text(
                        "Subscription",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    onPressed: () {
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new FlatButton(
                    child: ListTile(
                      title: new Text(
                        "FEATURED PLACES",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    onPressed: () {
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: new FlatButton(
                    child: ListTile(
                      title: new Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SlidingUpPanel(
        maxHeight: 2000,
        minHeight: 260,
        parallaxEnabled: true,
        parallaxOffset: .5,
        backdropEnabled: true,
        panel: Center(
          child: body,
        ),
        collapsed: Container(
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'Bacolod City',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Safety Level:',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(
                          '90%',
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontFamily: 'Nunito',
                              fontSize: 40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Tourist Density:',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Nunito',
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(
                          '10,000',
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontFamily: 'Nunito',
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(5),
                          color: Colors.white,
                          child: Text('Heat Map',
                              style: TextStyle(color: Colors.blueGrey)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45, top: 15),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.all(1),
                          color: Colors.white,
                          child: Text('Icons Map',
                              style: TextStyle(color: Colors.blueGrey)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 800,
                    height: 50,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        'REVIEWS AND RATINGS',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Center(child: Text('dwadwd')),
      ),
    );
  }
}
