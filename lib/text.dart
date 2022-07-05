import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenText extends StatelessWidget {
  String text = '';
  // ignore: use_key_in_widget_constructors
  ScreenText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
