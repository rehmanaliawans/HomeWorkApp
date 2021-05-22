import 'package:flutter/material.dart';
import 'UI/Splashscreen.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home Work Management App",
      home: new Splashscreen(),
    );
  }
}