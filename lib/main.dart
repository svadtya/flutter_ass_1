// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './textapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _text = 'Text not changed yet';

  final List<String> _textList = ['Ahoy', 'Uhuy'];
  var _index = 0;

  void _changeText() {
    setState(() {
      _index = _index == 0 ? 1 : 0;
      _text = _textList[_index]; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment App'),
        ),
        body: TextApp(_text, _changeText),
      ),
    );
  }
}
