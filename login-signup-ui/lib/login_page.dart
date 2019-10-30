import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/signup_page.dart';
import 'package:login/forgot_password.dart';
import 'package:login/Slide.dart';
import 'package:login/Swipe.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Padding(
      padding: EdgeInsets.only(),
      child: Image(
        image: AssetImage('assets/logo.png'),
      ),
    );

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

    final passwordWord = Padding(
      padding: EdgeInsets.only(right: 193),
      child: Text(
        'Password',
        style: TextStyle(fontSize: 18.0, color: Colors.white),
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

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final signupStatement = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Dont have an account yet?',
        style: TextStyle(color: Colors.white),
      ),
    );

    final signup = FlatButton(
      child: Text(
        'Sign up here.',
        style: TextStyle(color: Colors.yellowAccent),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignupPage()),
        );
      }
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
        children: <Widget>[logo, emailWord, email, passwordWord, password, loginButton, signupStatement, signup],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: body,
    );
  }
}

