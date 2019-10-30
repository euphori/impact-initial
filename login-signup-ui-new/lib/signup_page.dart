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
  String testString = 'asd';

  @override
  Widget build(BuildContext context) {
    final logo = Center(
      child: Text(
        'BE A MEMBER',
        style: TextStyle(color: Colors.black54, fontSize: 30.0),
      ),
    );

    final username = TextFormField(
      onSaved: (value) => _username = value,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final first_name = TextFormField(
      onSaved: (value) => _name = value,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Full Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final last_name = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Last Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final date_of_birth = TextFormField(
      keyboardType: TextInputType.datetime,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Date of Birth',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final address = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Address',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final city = TextFormField(
      onSaved: (value) => _city = value,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'City',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final country = TextFormField(
      onSaved: (value) => _country = value,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Country',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final postal = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Postal Code',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
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

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
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
        padding: EdgeInsets.all(12),
        color: Colors.blueGrey,
        child: Text('Sign up', style: TextStyle(color: Colors.white)),
      ),
    );

    final login = FlatButton(
      child: Text(
        'Already have an account? Login here.',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()));
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
              SizedBox(height: 70.0),
              logo,
              SizedBox(height: 48.0),
              username,
              SizedBox(height: 8.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 8.0),
              first_name,
              SizedBox(height: 8.0),
              date_of_birth,
              SizedBox(height: 8.0),
              address,
              SizedBox(height: 8.0),
              city,
              SizedBox(height: 8.0),
              country,
              SizedBox(height: 8.0),
              postal,
              SizedBox(height: 24.0),
              signupButton,
              login
            ],
          ),
        ),
      ),
    );
  }
}
