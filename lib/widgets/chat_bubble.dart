import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  String text;
  bool isSenderMe;
  ChatBubble({
    required this.text,
    this.isSenderMe = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSenderMe ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.20,
        ),
        padding: const EdgeInsets.only(
          right: 10,
          top: 5,
          bottom: 5,
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSenderMe ? Colors.blue[800] : Colors.grey,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
