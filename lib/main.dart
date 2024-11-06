import 'package:flutter/material.dart';
import 'package:supcar/ask.dart';
import 'package:supcar/content/askcard.dart';
import 'package:supcar/home.dart';
import 'package:supcar/patient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'ask': (context) => Ask(),
      },
    );
  }
}
