import 'package:flutter/material.dart';

class Statusviewscreen extends StatelessWidget {
  const Statusviewscreen({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: const BackButton(
          
        ),
      ),
      body: const Center(
          child: Text(
        "coming soon",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
