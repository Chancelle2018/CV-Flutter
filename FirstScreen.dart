import 'package:flutter/material.dart';

import 'HomePage.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/fond.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage('images/cv.jpg'),
              ),
            ),
            Container(
              height: 60.0,
              width: 150.0,
              child: Text(
                'Chancelle Kizima',
                style: TextStyle(
                  fontFamily: 'Mukta-Bold',
                  fontSize: 19.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 25.0,
              width: 150.0,
              child: Text(
                'Ingénieur',
                style: TextStyle(
                  fontFamily: 'BakbakOne',
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              color: Colors.brown,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.email_outlined, size: 20.0, color: Colors.black),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "chanelleKizima6@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.brown,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.phone,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "+33 (0) 7 58 57 75 71",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
