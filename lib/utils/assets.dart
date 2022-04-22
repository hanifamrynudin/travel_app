import 'package:flutter/material.dart';
import 'package:travel_app/models/buddies.dart';
import 'package:travel_app/models/places.dart';

class Assets {
  static const splashScreen = 'assets/splash_screen.png';
  static const header = 'assets/header.png';
  static const icNotif = 'assets/ic_notif.png';
  static const icMenu = 'assets/ic_menu.png';
  static const icSearch = 'assets/ic_search.png';
  static const friend1 = 'assets/friend1.png';
  static const friend2 = 'assets/friend2.png';

  static const heading1 = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 40, fontWeight: FontWeight.bold);
  static const heading2 = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 35, fontWeight: FontWeight.bold);
  static const heading3 = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 35, fontWeight: FontWeight.w500);
  static const heading4 = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 30, fontWeight: FontWeight.w400);
  static const body = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 20, fontWeight: FontWeight.w500);
  static const caption = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
  static const smallCaption = TextStyle(
      fontFamily: 'GTWalsheimPro', fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white54);

  static final List<Places> savedPlace = [
    Places(
      name: 'Japan',
      image: 'assets/japan.png',
    ),
    Places(
      name: 'Barcelona',
      image: 'assets/barcelona.png',
    ),
    Places(
      name: 'Greece',
      image: 'assets/greece.png',
    ),
    Places(
      name: 'Rome',
      image: 'assets/rome.png',
    ),
  ];

  static final List<Buddies> travelBuddies = [
    Buddies(
      name: 'Ashok',
      age: 28,
      image: 'assets/friend1.png',
      status: 'Friend',
    ),
    Buddies(
      name: 'Jack',
      age: 20,
      image: 'assets/friend2.png',
      status: 'Friend',
    ),
  ];
}
