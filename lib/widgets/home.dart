import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_text.dart';
import 'package:quiz_app/widgets/page_quizz.dart';
// --------------
class StartScreen extends StatefulWidget {
  // Passer des parametre à ma class
  StartScreen({Key key, this.title}) : super(key: key);
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
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Card(
              elevation: 10.0,
              child: new Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 1.2,
                child: new Image.asset(
                  "quizz_assets/cover.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {
                Navigator.push(
                  context, new MaterialPageRoute(builder: (BuildContext context) {
                    return new QuizzPage();
                  })
                );
              },
              child:
                  new CustomText("Commencer", factor: 1.5, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


