import 'package:flutter/material.dart';
import 'package:supcar/constent/color.dart';

class Askcard extends StatelessWidget {
  final String hint1;
  final String? Function(String?) valid;
  final TextEditingController mycontroller;
  final int max;
  Askcard(
      {super.key,
      required this.hint1,
      required this.mycontroller,
      required this.valid,
      required this.max});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: pink,
          border: Border.all(),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(20),
      child: TextFormField(
        maxLines: max,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hint1,
            hintStyle: TextStyle(color: deepBlue),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: deepBlue, width: 1),
            )),
      ),
    );
  }
}
