import 'package:flutter/material.dart';

abstract class Styles {
  static const titleApp = TextStyle(
    fontSize: 35,
    letterSpacing: 6,
    fontFamily: 'Pirata',
  );
  static const titleMedium = TextStyle(
    fontFamily: "Inter",
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );
  static const titleBook = TextStyle(
    fontFamily: "Sectra",
    fontSize: 25,
  );
  static const titleAuthor = TextStyle(
    fontFamily: "Inter",
    fontSize: 15,
    color: Colors.grey,
  );
  static const titlePrice = TextStyle(
    fontFamily: "Inter",
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const titleRate = TextStyle(
    fontFamily: "Inter",
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const titleRaters = TextStyle(
    fontFamily: "Inter",
    fontSize: 14,
    color: Colors.grey,
  );
}
