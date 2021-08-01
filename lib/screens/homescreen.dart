import 'package:flutter/material.dart';
import 'package:project/buttons.dart';
import 'package:project/screens/welcome_screen.dart';
import 'address.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homescreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    String email = "";
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    '9162069922',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Order History'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('help & support'),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Update'),
            ),
            ListTile(
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Are you sure you want to logout'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, WelcomeScreen.id),
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              leading: Icon(Icons.power_off),
              title: Text('logout'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Account"),
      ),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "9162069922",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.person_outlined,
                  size: 25,
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      //Do something with the user input.
                      name = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                      border: UnderlineInputBorder(),
                      labelText: name.length == 0 ? "Enter Your Name" : "$name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.person_outlined,
                ),
                Flexible(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      //Do something with the user input.
                      email = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                      border: UnderlineInputBorder(),
                      labelText:
                          email.length == 0 ? "Enter Your Email" : "$email",
                    ),
                  ),
                ),
              ],
            ),
            Buttonwidget(
              buttoncolor: Colors.green,
              text: 'add address',
              onpressed: () {
                Navigator.pushNamed(context, AddressScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
