// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Customtextbuttom extends StatelessWidget {
  String custombutton;
  Customtextbuttom({
    super.key,
    required this.custombutton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 61, 59, 59),
          borderRadius: BorderRadius.circular(4)),
      height: 33,
      width: 105,
      child: TextButton(
          onPressed: () {},
          child: Text(
            custombutton,
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
