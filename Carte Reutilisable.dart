import 'package:flutter/material.dart';

class CarteReutilisable extends StatelessWidget {
  final couleur;
  final cardChild;
  final onPress;

  CarteReutilisable({@required this.couleur, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: couleur,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
