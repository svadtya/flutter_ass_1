import 'package:flutter/material.dart';

import './textcontrol.dart';

class TextApp extends StatelessWidget {
  final String text;
  final VoidCallback textHandler;

  TextApp(this.text, this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          TextControl(textHandler),
        ],
      ),
    );
  }
}
