import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  static String id = 'adressscreen';

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    String fullname = "";
    String houseno = "";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ADDRESS"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      //Do something with the user input.
                      fullname = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                      border: UnderlineInputBorder(),
                      labelText: fullname.length == 0
                          ? "Enter Your Full name"
                          : "$fullname",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      //Do something with the user input.
                      houseno = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                      border: UnderlineInputBorder(),
                      labelText: houseno.length == 0
                          ? "house no/Building Name"
                          : "$houseno",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Locality",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "ISB CAMPUS ,GACHIBOWLI",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "City",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Hyderabad",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Pincode",
                    style: TextStyle(
                      color: Colors.lightBlue,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "500032",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.green,
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Add address',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
