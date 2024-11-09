import 'package:flutter/material.dart';
import 'package:supcar/patient/ask.dart';
import 'package:supcar/content/form.dart';
import 'package:supcar/doctor/addpost.dart';
import 'package:supcar/doctor/doctorhome.dart';
import 'package:supcar/patient/home.dart';
import 'package:supcar/patient/patient.dart';

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
      home: Doctorhome(),
      initialRoute: 'doctorhome',
      routes: {
        'home': (context) => Home(),
        'ask': (context) => Ask(),
        'addpost': (context) => Addpost(),
        'doctorhome': (context) => Doctorhome()
      },
    );
  }
}
