import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Carte Reutilisable.dart';
import 'FirstScreen.dart';
import 'HomePage.dart';

class Langues extends StatefulWidget {
  const Langues({Key? key}) : super(key: key);

  @override
  _LanguesState createState() => _LanguesState();
}

class _LanguesState extends State<Langues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/fond.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
                          //child : Icon(Icons.arrow_forward),
                        ),
                        Text(
                          'Chancelle KIZIAM',
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 300.0,
                  margin: EdgeInsets.fromLTRB(100.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Langues Parlées',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 380.0,
                  margin: EdgeInsets.fromLTRB(0.0, 222.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: Colors.brown,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                  text: 'Portugais',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launch(
                                          'https://fr.wikipedia.org/wiki/Fran%C3%A7ais');
                                    }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 380.0,
                  margin: EdgeInsets.fromLTRB(0.0, 330.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: Colors.brown,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                  text: 'Anglais',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 380.0,
                  margin: EdgeInsets.fromLTRB(0.0, 430.0, 0.0, 0.0),
                  child: CarteReutilisable(
                    couleur: Colors.brown,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                  text: 'Allemand',
                                  style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 25.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 190.0,
                  margin: EdgeInsets.fromLTRB(100.0, 600.0, 0.0, 0.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return HomePage();
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 60.0,
                  width: 90.0,
                  margin: EdgeInsets.fromLTRB(20.0, 240.0, 0.0, 0.0),
                  child: Image(image: AssetImage("images/POR.png")),
                ),
                Container(
                  height: 60.0,
                  width: 90.0,
                  margin: EdgeInsets.fromLTRB(20.0, 350.0, 160.0, 0.0),
                  child: Image(image: AssetImage("images/EN.jpg")),
                ),
                Container(
                  height: 60.0,
                  width: 90.0,
                  margin: EdgeInsets.fromLTRB(20.0, 450.0, 160.0, 0.0),
                  child: Image(image: AssetImage("images/AL.png")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void launch(String s) {}
}
