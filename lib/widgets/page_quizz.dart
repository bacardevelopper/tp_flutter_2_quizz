import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:quiz_app/classes/questions.dart';
import 'dart:async';

class QuizzPage extends StatefulWidget {
  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<QuizzPage> {
  // question de type Question

  int index = 0;
  int score = 0;
  Question question;
  List<Question> maListeQuestion = [
    new Question('La devise de la Belgique est l\'union fait la force', true,
        '', 'belgique.jpg'),
    new Question('La lune va finir par tomber sur terre à cause de la gravité',
        false, 'Au contraire la lune s\'éloigne', 'lune.jpg'),
    new Question('La Russie est plus grande en superficie que Pluton', true, '',
        'russie.jpg'),
    new Question('Nyctalope est une race naine d\'antilope', false,
        'C’est une aptitude à voir dans le noir', 'nyctalope.jpg'),
    new Question('Le Commodore 64 est l\’oridnateur de bureau le plus vendu',
        true, '', 'commodore.jpg'),
    new Question('Le nom du drapeau des pirates es black skull', false,
        'Il est appelé Jolly Roger', 'pirate.png'),
    new Question('Haddock est le nom du chien Tintin', false, 'C\'est Milou',
        'tintin.jpg'),
    new Question('La barbe des pharaons était fausse', true,
        'A l\'époque déjà ils utilisaient des postiches', 'pharaon.jpg'),
    new Question(
        'Au Québec tire toi une bûche veut dire viens viens t\'asseoir',
        true,
        'La bûche, fameuse chaise de bucheron',
        'buche.jpg'),
    new Question('Le module lunaire Eagle de possédait de 4Ko de Ram', true,
        'Dire que je me plains avec mes 8GO de ram sur mon mac', 'eagle.jpg'),
  ];

  @override
  void initState() {
    super.initState();
    question = maListeQuestion[index];
  }

  @override
  Widget build(BuildContext context) {
    double taille = MediaQuery.of(context).size.width * 0.75;
    // todo : implement build
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new CustomText("le quizz", color: Colors.white),
        backgroundColor: Colors.greenAccent,
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new CustomText("Question numéro ${index + 1}"),
            new CustomText("Score : $score / $index", color: Colors.green),
            new Card(
              elevation: 10.0,
              child: new Container(
                height: taille,
                width: taille,
                child: new Image.asset("quizz_assets/${question.imagePath}",
                    fit: BoxFit.cover),
              ),
            ),
            new CustomText(question.question,
                color: Colors.grey[900], factor: 1.1),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buttonBool(true),
                  buttonBool(false),
                ])
          ],
        ),
      ),
    );
  }

  RaisedButton buttonBool(bool b) {
    return new RaisedButton(
      elevation: 10.0,
      onPressed: () => dialogue(b),
      color: Colors.greenAccent,
      child: new CustomText((b) ? "vrai" : "faux"),
    );
  }

  Future dialogue(bool b) async {
    bool bonneReponse = (b == question.reponse);
    String vrai = "quizz_assets/vrai.jpg";
    String faux = "quizz_assets/faux.jpg";
    if (bonneReponse) {
      score++;
    }
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new SimpleDialog(
              title: new CustomText((bonneReponse) ? "gagné" : "pérdu"),
              contentPadding: EdgeInsets.all(20.0),
              children: <Widget>[
                new Image.asset(
                  (bonneReponse) ? vrai : faux,
                  fit: BoxFit.cover,
                ),
                new Container(
                  height: 25.0,
                ),
                new CustomText(question.explication, color: Colors.grey),
                new Container(
                  height: 25.0,
                ),
                new RaisedButton(
                  child: new CustomText("question suivante"),
                  onPressed: () {
                    Navigator.pop(context);
                    questionSuivant();
                  },
                ),
              ]);
        });
  }

  Future alerteDeDialogue() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        // ignore: missing_return
        builder: (BuildContext buildContext) {
          return new AlertDialog(
              title: new CustomText("c'est fini $score / $index"),
              actions: <Widget>[
                new FlatButton(
                  onPressed: (() {
                    Navigator.pop(buildContext);
                    Navigator.pop(context);
                  }),
                  child: new CustomText("OK"),
                ),
              ]);
        });
  }

  void questionSuivant() {
    if (index < maListeQuestion.length) {
      index++;
      setState(() {
        question = maListeQuestion[index];
      });
    } else {
      alerteDeDialogue();
    }
  }
}
