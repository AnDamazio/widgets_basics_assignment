import 'package:flutter/material.dart';
import 'package:widgets_basics_assignment/text_control.dart';
import 'package:widgets_basics_assignment/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _textPointer = 0;
  List<String> text = [
    'I will never gonna change',
    'Oh, no... you\'ve got me',
    'Nothing\'s forever, now i see',
    'Except the end, it looks'
  ];

  VoidCallback? changeText() {
    if (_textPointer + 1 < text.length) {
      setState(() {
        _textPointer++;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Exercise',
          ),
        ),
        body: Column(
          children: [
            ScreenText(text: text[_textPointer]),
            TextControl(changeText),
          ],
        ),
      ),
    );
  }
}
