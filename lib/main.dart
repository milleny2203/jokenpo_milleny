import 'package:flutter/material.dart';
import 'package:jokenpo/jokenpo/jokenpo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokenpô',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: JokenpoPage(),
    );
  }
}
