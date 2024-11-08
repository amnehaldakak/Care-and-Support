import 'package:flutter/material.dart';
import 'package:supcar/constent/color.dart';
import 'package:supcar/content/form.dart';
import 'package:supcar/content/valid.dart';

class Addpost extends StatefulWidget {
  const Addpost({super.key});

  @override
  State<Addpost> createState() => _AddpostState();
}

class _AddpostState extends State<Addpost> {
  TextEditingController post = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Form1(
                hint1: ' write post',
                mycontroller: post,
                valid: (val) {
                  vaidInput(val!, 10, 1000);
                },
                max: 15),
            Container(
              color: pink,
              child: TextButton(
                onPressed: () {},
                child: Text("create post"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
