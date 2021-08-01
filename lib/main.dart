import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/homescreen.dart';
import 'screens/address.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(

          primarySwatch: Colors.lightBlue,
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          AddressScreen.id: (context) => AddressScreen(),
          // ChatScreen.id: (context) => ChatScreen(),
          // MainChatScreen.id: (context) => MainChatScreen(),
          // UserDetails.id: (context) => UserDetails(),
        });
  }
}
