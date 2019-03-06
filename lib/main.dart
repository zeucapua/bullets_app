import 'package:flutter/material.dart';
import 'package:bullets_app/pages/MainPage.dart';

void main() => runApp(BulletsApp());

class BulletsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bullets',
      theme: ThemeData.dark(),
      home: MainPage()
    );
  }


}