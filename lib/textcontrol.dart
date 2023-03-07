import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback textHandler;

  TextControl(this.textHandler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.teal),
          foregroundColor: MaterialStateProperty.all(Colors.white)),
      child: Text('Change Text!'),
      onPressed: textHandler,
    );
  }
}
