import 'package:flutter/material.dart';
import 'home.dart';
// ---------------------------
// ma class StatelessWidget
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Quizz app',
      theme: new ThemeData(primaryColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      // parametre title declaer Dans StartScreen
      home: StartScreen(title : 'Quizz app'),
    );
  }
}
