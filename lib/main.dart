import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
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
  int textPointer = 0;
  List<String> text = [
    'I will never gonna change',
    'Oh, no... you\'ve got me',
    'Nothing\'s forever, now i see',
    'Except the end, it looks'
  ];

  VoidCallback? changeText() {
    if (textPointer + 1 < text.length) {
      setState(() {
        textPointer++;
      });
      print([textPointer, text.length]);
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
            ScreenText(text: text[textPointer]),
            TextControl(changeText),
          ],
        ),
      ),
    );
  }
}

// Container(
//           margin: const EdgeInsets.all(10),
//           child: Center(
//             child: Column(
//               children: const <Widget>[
//                 Text(
//                   'I will never gonna change!',
//                   style: TextStyle(fontSize: 40),
//                 ),
//                 ElevatedButton(onPressed: onPressed, child: child)
//               ],
//             ),
//           ),
//         ),