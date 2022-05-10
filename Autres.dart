import 'package:controle/FirstScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Carte Reutilisable.dart';
import 'HomePage.dart';

class Autres extends StatefulWidget {
  const Autres({Key? key}) : super(key: key);

  @override
  _AutresState createState() => _AutresState();
}

class _AutresState extends State<Autres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
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
                          'Chancelle KIZIMA',
                          style: TextStyle(
                            fontFamily: 'Mukta-Bold',
                            fontSize: 25.0,
                            color: Colors.black,
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
                  margin: EdgeInsets.fromLTRB(60.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Centre Interret',
                    style: TextStyle(
                      fontFamily: 'Mukta-Bold',
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
                                  text: 'Loisir',
                                  style: TextStyle(
                                    fontFamily: 'Mukta-Bold',
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
                                  text: 'Hobi',
                                  style: TextStyle(
                                    fontFamily: 'Mukta-Bold',
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
                                  text: 'Passions',
                                  style: TextStyle(
                                    fontFamily: 'Mukta-Bold',
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
                  margin: EdgeInsets.fromLTRB(10.0, 600.0, 0.0, 0.0),
                  child: FloatingActionButton(
                      child: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return HomePage();
                          }),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
