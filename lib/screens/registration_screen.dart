import 'package:flutter/material.dart';
import 'package:project/buttons.dart';
import 'package:project/constants.dart';
import 'homescreen.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registrationscreen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showspinner = false;
  String email;
  String password;
  String firstname;
  String lastname;
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
                "Regi\nster",
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                //Do something with the user input.
                firstname = value;
              },
              decoration: buildInputDecoration(
                  text: "Enter Your first name", kcolor: Colors.blueAccent),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              onChanged: (value) {
                //Do something with the user input.
                email = value;
              },
              decoration: buildInputDecoration(
                  text: "Enter Your Email", kcolor: Colors.blueAccent),
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
                  text: "Enter Your Password", kcolor: Colors.blueAccent),
            ),
            SizedBox(
              height: 24.0,
            ),
            Buttonwidget(
              buttoncolor: Colors.blueAccent,
              text: 'Register',
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
