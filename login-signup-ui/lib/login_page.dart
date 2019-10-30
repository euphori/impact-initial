import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/signup_page.dart';
import 'package:login/forgot_password.dart';
import 'package:login/Slide.dart';
import 'package:login/Swipe.dart';
import 'preferences_helper.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    final logo = Image(
        image: AssetImage('assets/logo.png'),

    );

    final emailWord = Text(
        'Email',
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),

    );

    final email = TextFormField(
      onSaved: (value) => _email = value,
      style: TextStyle(
        color: Colors.blueGrey,
        fontFamily: 'Nunito',
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

    final passwordWord = Text(
        'Password',
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),

    );

    final password = TextFormField(
      onSaved: (value) => _password = value,
      style: TextStyle(
        color: Colors.blueGrey,
          fontFamily: 'Nunito',
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
        onPressed: () async {
          final form = _formKey.currentState;
          form.save();

          String _kemail = 'email:' + _email;
          String _kpassword = 'password:' + _email;
          String tempEmailValue;
          String tempPasswordValue;

          await Prefs.getEmail(_kemail).then((value) {
            setState(() {
              tempEmailValue = value;
            });
          });
          await Prefs.getPassword(_kpassword).then((value) {
            setState(() {
              tempPasswordValue = value;
            });
          });

          if (_password == tempPasswordValue && (tempEmailValue != '' && tempPasswordValue != '')) {
            print('log-in successful');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          else {
            print('log-in failed');
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(10),
        color: Colors.blueGrey,
        child: Text('Log In', style: TextStyle(color: Colors.white, fontFamily: 'Nunito')),
      ),
    );

    final signupStatement = Text(
        'Dont have an account yet?',
        style: TextStyle(color: Colors.white, fontFamily: 'Nunito'),
    );

    final signup = FlatButton(
      child: Text(
        'Sign up here.',
        style: TextStyle(color: Colors.yellowAccent, fontFamily: 'Nunito'),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignupPage()),
        );
      }
    );

    final body = Container(
      padding: EdgeInsets.only(left: 40.0, right: 40.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey, Colors.blueGrey]
        ),
      ),
        child: Column(
          children: <Widget>[logo, emailWord, email, SizedBox(height: 20), passwordWord, password, loginButton, signupStatement, signup],
        ),

    );

    return Scaffold(
      body: body,
    );
  }
}

