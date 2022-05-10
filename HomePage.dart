import 'package:controle/FirstScreen.dart';
import 'package:controle/Langues.dart';
import 'package:controle/Professionnel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Carte Reutilisable.dart';
import 'Aquademique.dart';
import 'Professionnel.dart';
import 'Autres.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/fond.jpg'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 200.0,
                    width: 400.0,
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 400.0),
                    child: CarteReutilisable(
                      couleur: Colors.brown,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage('images/cv.jpg'),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return FirstScreen();
                                }),
                              );
                            },
                          ),
                          Text(
                            'Chancelle Kizima',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontSize: 25.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,

                              //child : Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 300.0,
                    margin: EdgeInsets.fromLTRB(100.0, 200.0, 0.0, 0.0),
                    child: Text(
                      'Ciricculum Vitae',
                      style: TextStyle(
                        fontFamily: 'Mukta',
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 107.0,
                    width: 180.0,
                    margin: EdgeInsets.fromLTRB(0.0, 370.0, 222.0, 0.0),
                    child: CarteReutilisable(
                      couleur: Colors.brown,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new RichText(
                            text: new TextSpan(children: [
                              new TextSpan(
                                  text: 'Langues',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: new TapGestureRecognizer()),
                            ]),
                          ),
                          FlatButton(
                            child: Text(''),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Langues();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 107.0,
                    width: 180.0,
                    margin: EdgeInsets.fromLTRB(0.0, 222.0, 0.0, 0.0),
                    child: CarteReutilisable(
                      couleur: Colors.brown,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Académique',
                                    style: TextStyle(
                                      fontFamily: 'Pacifico',
                                      fontSize: 22.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()),
                              ],
                            ),
                          ),
                          FlatButton(
                            child: Text(''),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Academique();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 107.0,
                    width: 200.0,
                    margin: EdgeInsets.fromLTRB(190.0, 220.0, 0.0, 200.0),
                    child: CarteReutilisable(
                      couleur: Colors.brown,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new RichText(
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                    text: 'Professionnel',
                                    style: TextStyle(
                                      fontFamily: 'Pacifico',
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: new TapGestureRecognizer()),
                              ],
                            ),
                          ),
                          FlatButton(
                            child: Text(''),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Professionnel();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 107.0,
                    width: 200.0,
                    margin: EdgeInsets.fromLTRB(190.0, 360.0, 0.0, 200.0),
                    child: CarteReutilisable(
                      couleur: Colors.brown,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new RichText(
                            text: new TextSpan(
                              children: [
                                new TextSpan(
                                    text: 'Autres',
                                    style: TextStyle(
                                      fontFamily: 'Pacifico',
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: new TapGestureRecognizer()),
                              ],
                            ),
                          ),
                          FlatButton(
                            child: Text(''),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Autres();
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
