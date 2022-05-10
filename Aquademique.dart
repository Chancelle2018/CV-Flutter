import 'package:controle/Carte%20Reutilisable.dart';
import 'package:controle/FirstScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Carte Reutilisable.dart';
import 'HomePage.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

class Academique extends StatefulWidget {
  const Academique({Key? key}) : super(key: key);

  @override
  _AcademiqueState createState() => _AcademiqueState();
}

class _AcademiqueState extends State<Academique> {
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
                            fontFamily: 'Mukta',
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
                  margin: EdgeInsets.fromLTRB(50.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Formations Accadémique',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                    child: Container(
                      color: Colors.brown,
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.fromLTRB(20.0, 260.0, 50.0, 0.0),
                      height: 60.0,
                      width: 380.0,
                      child: Center(
                        child: Text(
                          "Informatique pour la Santé ",
                          style: TextStyle(
                            fontFamily: 'Mukta',
                            fontSize: 25.0,
                            color: Colors.black,
                            //letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      const url =
                          'https://episen.u-pec.fr/formations/technologies-pour-la-sante-its';
                      launchURL(url);
                    }),
                GestureDetector(
                    child: Container(
                      color: Colors.brown,
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.fromLTRB(20.0, 350.0, 0.0, 0.0),
                      height: 70.0,
                      width: 340.0,
                      child: Center(
                        child: Text(
                          "Systèmes d'Information ",
                          style: TextStyle(
                            fontFamily: 'Mukta',
                            fontSize: 25.0,
                            color: Colors.black,
                            //letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      const url =
                          'https://www.u-pec.fr/fr/formation/diplome-d-ingenieur-specialite-systemes-d-information-si';
                      launchURL(url);
                    }),
                GestureDetector(
                    child: Container(
                      color: Colors.brown,
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.fromLTRB(20.0, 450.0, 0.0, 0.0),
                      height: 70.0,
                      width: 340.0,
                      child: Center(
                        child: Text(
                          "En Savoir Plus",
                          style: TextStyle(
                            fontFamily: 'Mukta',
                            fontSize: 25.0,
                            color: Colors.black,
                            //letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      const url = 'https://www.lemondeinformatique.fr/';
                      launchURL(url);
                    }),
                Container(
                  height: 60.0,
                  width: 50.0,
                  margin: EdgeInsets.fromLTRB(40.0, 600.0, 0.0, 0.0),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
