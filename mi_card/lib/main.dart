import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
            centerTitle: true,
            title: Text('My Business Card',
                style: TextStyle(
                    fontFamily: 'SourceSans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 5.5))),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
              CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/dennis.jpg'),
              backgroundColor: Colors.white,
            ),
            Text(
              'Dennis Akagha',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSans',
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              width: 150.0,
              height: 10.0,
              child: Divider(color: Colors.white,),

            ),
            Card(
              margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.green.shade900,
                  ),
                  title: Text('+23480000000000',
                      style: TextStyle(
                          fontFamily: 'SourceSans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900))),
            ),
            Card(
              margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                child: ListTile(
                leading: Icon(Icons.email,
                color: Colors.green.shade900),
                title: Text(
                  'Email Address',
                  style: TextStyle(
                    fontFamily: 'SourceSans',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
