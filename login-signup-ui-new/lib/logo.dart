import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:login/signup_page.dart';
import 'package:login/login_page.dart';

class LogoPage extends StatefulWidget {
  static String tag = 'logo-page';
  @override
  _LogoPageState createState() =>_LogoPageState();
}

class _LogoPageState extends State<LogoPage> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);

    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.stop();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return LogoAnimation(
      animation: animation,
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

class LogoAnimation extends AnimatedWidget {
  LogoAnimation({Key key, Animation animation})
      : super(key: key, listenable: animation);


  @override
  Widget build(BuildContext context) {
    Animation animation = listenable;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
      child: Column(
      children: <Widget>[
        SizedBox(height: 150.0),
        Container(
        height: animation
            .value,
        width: animation.value,
        child: Image(image: AssetImage('assets/logo.png'), width: 20.0),
      ),
        SizedBox(height: 48.0),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
          padding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 120.0, right: 120.0),
          color: Colors.blueGrey,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()));
            },
            padding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 115.0, right: 115.0),
            color: Colors.grey,
            child: Text('Sign Up', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
      ),
    ),
    );
  }
}
