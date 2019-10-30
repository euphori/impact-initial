import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget{
  static String tag = 'forgot-password';
  @override
  _ForgotPasswordState createState() => new _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {

    final Text1 = Text (
      'Find Your Account',
      style: TextStyle(color: Colors.black, fontSize: 14.0),
    );

    final email = TextFormField (
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    return Scaffold (
      backgroundColor: Colors.white,
      body: Center (
        child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          Text1,
          email,
          SizedBox(height: 8.0),
        ],
        ),
      ),
    );
  }
}