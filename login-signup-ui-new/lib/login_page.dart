import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/signup_page.dart';
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
    final logo = Center(
        child: Image(image: AssetImage('assets/truddy.png'),
        ),
        );

    final email = TextFormField(
      onSaved: (value) => _email = value,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      onSaved: (value) => _password = value,
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
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
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final signup = FlatButton(
      child: Text(
        'Dont have an account? Sign up here.',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignupPage()));
      },
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgotLabel,
              signup
            ],
          ),
        ),
      ),
    );
  }
}
