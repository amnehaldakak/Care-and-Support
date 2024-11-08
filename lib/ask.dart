import 'package:flutter/material.dart';
import 'package:supcar/constent/color.dart';
import 'package:supcar/content/form.dart';
import 'package:supcar/content/valid.dart';

class Ask extends StatefulWidget {
  const Ask({super.key});

  @override
  State<Ask> createState() => _AskState();
}

class _AskState extends State<Ask> {
  TextEditingController typeOfConsultation = TextEditingController();
  TextEditingController content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blue1,
        child: Column(
          children: [
            Form1(
              max: 8,
              hint1: 'Write Your Consultation',
              mycontroller: content,
              valid: (val) {
                return vaidInput(val!, 40, 1000);
              },
            ),
            TextButton(
              onPressed: () {},
              child: Text('Send Consultation'),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(pink),
              ),
            )
          ],
        ),
      ),
    );
  }
}
