import 'package:flutter/material.dart';
import 'package:supcar/constent/color.dart';
import 'package:supcar/content/consultation.dart';

class Doctorsearch extends StatefulWidget {
  const Doctorsearch({super.key});

  @override
  State<Doctorsearch> createState() => _DoctorsearchState();
}

class _DoctorsearchState extends State<Doctorsearch> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('ask');
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            backgroundColor: pink,
            toolbarHeight: 0,
            bottom: TabBar(tabs: [
              Tab(
                child: ListView(),
              ),
              Tab(
                child: Text('غير مردود عليه'),
              )
            ]),
          ),
          body: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [Consultation()],
            ),
          ),
        ));
  }
}