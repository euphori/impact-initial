import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/login_page.dart';

class SignupPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final emailWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'Email',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final email = TextFormField(
      style: TextStyle(
        color: Colors.blueGrey,
      ),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(18.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final usernameWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'Username',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final username = TextFormField(
      style: TextStyle(
        color: Colors.blueGrey,
      ),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(18.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final passwordWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'Password',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final password = TextFormField(
      style: TextStyle(
        color: Colors.blueGrey,
      ),
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final nameWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'Name',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final name = TextFormField(
      style: TextStyle(
        color: Colors.blueGrey,
      ),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(18.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final cityWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'City',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final city = TextFormField(
      style: TextStyle(
        color: Colors.blueGrey,
      ),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(18.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final countryWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'Country',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final country = TextFormField(
      style: TextStyle(
        color: Colors.blueGrey,
      ),
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('Sign Up1', style: TextStyle(color: Colors.white)),
      ),
    );

    final login = FlatButton(
      child: Text(
        'Already have an account? Login here.',
        style: TextStyle(color: Colors.yellowAccent),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey, Colors.blueGrey]
        ),
      ),
      child: Column(
        children: <Widget>[emailWord, email, SizedBox(height: 8.0), usernameWord, username, SizedBox(height: 8.0),
                          passwordWord, password, SizedBox(height: 8.0), nameWord, name, SizedBox(height: 8.0),
                          cityWord, city, SizedBox(height: 8.0), countryWord, country, SizedBox(height: 8.0),
                          signupButton, login],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
