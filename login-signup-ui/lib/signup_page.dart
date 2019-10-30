import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/login_page.dart';
import 'preferences_helper.dart';

class SignupPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _SignupPageState createState() => new _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _username;
  String _password;
  String _name;
  String _city;
  String _country;
  String testString = 'advvf';

  @override
  Widget build(BuildContext context) {
    final emailWord = Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        'Email',
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),
      ),
    );

    final email = TextFormField(
      onSaved: (value) => _email = value,
      style: TextStyle(
        color: Colors.blueGrey, fontFamily: 'Nunito'
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
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),
      ),
    );

    final username = TextFormField(
      onSaved: (value) => _username = value,
      style: TextStyle(
        color: Colors.blueGrey, fontFamily: 'Nunito'
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
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),
      ),
    );

    final password = TextFormField(
      onSaved: (value) => _password = value,
      style: TextStyle(
        color: Colors.blueGrey, fontFamily: 'Nunito'
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
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),
      ),
    );

    final name = TextFormField(
      onSaved: (value) => _name = value,
      style: TextStyle(
        color: Colors.blueGrey, fontFamily: 'Nunito'
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
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito'),
      ),
    );

    final city = TextFormField(
      onSaved: (value) => _city = value,
      style: TextStyle(
        color: Colors.blueGrey, fontFamily: 'Nunito'
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
        style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'Nunito',
      ),
      ),
    );

    final country = TextFormField(
      onSaved: (value) => _country = value,
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
        onPressed: () async {
          final form = _formKey.currentState;
          form.save();

          String _kemail = 'email:' + _email;
          String _kusername = 'username:' + _email;
          String _kpassword = 'password:' + _email;
          String _kname = 'name:' + _email;
          String _kcity = 'city:' + _email;
          String _kcountry = 'country:' + _email;

          if (form.validate()) {
            await Prefs.setEmail(_kemail, _email);
            await Prefs.setUsername(_kusername, _username);
            await Prefs.setPassword(_kpassword, _password);
            await Prefs.setName(_kname, _name);
            await Prefs.setCity(_kcity, _city);
            await Prefs.setCountry(_kcountry, _country);

            await Prefs.getEmail(_kemail).then((value) {
              setState(() {
                testString = value;
              });
            });
          }
          else {
            print('validation error');
          }

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('Sign Up', style: TextStyle(color: Colors.white, fontFamily: 'Nunito')),
      ),
    );

    final login = FlatButton(
      child: Text(
        'Already have an account? Login here.',
        style: TextStyle(color: Colors.yellowAccent, fontFamily: 'Nunito'),
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
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[SizedBox(height: 20.0), emailWord, email, SizedBox(height: 8.0), usernameWord, username, SizedBox(height: 8.0),
            passwordWord, password, SizedBox(height: 8.0), nameWord, name, SizedBox(height: 8.0),
            cityWord, city, SizedBox(height: 8.0), countryWord, country, SizedBox(height: 8.0),
            signupButton, login],
        ),
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
