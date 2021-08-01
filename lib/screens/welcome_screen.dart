import 'package:project/screens/login_screen.dart';
import 'package:project/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:project/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcomescreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Text(
                "GO",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 80,
                ),
              ),
            ),
            // Center(
            //     child: AnimatedTextKit(
            //   animatedTexts: [FlickerAnimatedText('Made By Navidul')],
            //   isRepeatingAnimation: true,
            // )),
            SizedBox(
              height: 48.0,
            ),
            Buttonwidget(
              buttoncolor: Colors.white,
              text: 'Log In',
              onpressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            Buttonwidget(
              buttoncolor: Colors.lightBlue,
              text: 'Register',
              onpressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
