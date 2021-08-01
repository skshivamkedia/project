import 'package:flutter/material.dart';
import 'package:project/screens/homescreen.dart';
import 'package:project/screens/address.dart';

class MainList extends ChangeNotifier {
  String _username;
  String _firstname;
  String _profileurl;

  String get user {
    return _username;
  }

  String get profilepic {
    return _profileurl;
  }

  String get firstname {
    return _firstname;
  }

  void changeurl(String newurl) {
    _profileurl = newurl;
    notifyListeners();
  }

  void changefname(String firstname) {
    _firstname = firstname;
    notifyListeners();
  }

  void changeuser(String newuser) {
    _username = newuser;
    notifyListeners();
  }
}
