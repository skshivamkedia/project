import 'package:flutter/material.dart';
import 'package:project/constants.dart';
import 'package:project/buttons.dart';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'loginscreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showspinner = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.lightBlueAccent,
              radius: 50,
              child: Text(
                "LOG\n"
                "\tIN",
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                //Do something with the user input.
                email = value;
              },
              decoration: buildInputDecoration(
                  text: "Enter Your Email", kcolor: Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              obscureText: true,
              onChanged: (value) {
                //Do something with the user input.
                password = value;
              },
              decoration: buildInputDecoration(
                  text: "Enter Your password", kcolor: Colors.lightBlueAccent),
            ),
            SizedBox(
              height: 24.0,
            ),
            Buttonwidget(
              text: "Log In",
              buttoncolor: Colors.lightBlueAccent,
              onpressed: () async {
                setState(() {
                  showspinner = true;
                });
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
