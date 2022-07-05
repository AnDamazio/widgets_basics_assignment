import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeHandler;

  // ignore: use_key_in_widget_constructors
  const TextControl(this.changeHandler);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: changeHandler,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.primaries.first)),
        child: const Text(
          'Hit him!',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
