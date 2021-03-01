import 'package:flutter/material.dart';
// --------------
class StartScreen extends StatefulWidget {
  // Passer des parametre à ma class
  StartScreen({Key key, this.title}):super(key:key);
  final String title;
  @override
  _StartScreenState createState() => _StartScreenState();
}

/* _StartScreenState herite de l'etat de StartScreen et retourne un Container */
class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: new Center(
          child: new Text(
            widget.title,
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: new Center(
        child : new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget> [

          ],
        ),
      ),
    );
  }
}
