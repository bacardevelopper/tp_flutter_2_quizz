import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:quiz_app/classes/questions.dart';

class QuizzPage extends StatefulWidget {
  @override
  _PageState createState() => new _PageState();
}

class _PageState extends State<QuizzPage> {
  // question de type Question
  Question question;
  List<Question> maListeQuestion = [
    new Question('La devise de la Belgique est l\'union fait la force', true,
        '', 'belgique.JPG'),
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

  int index = 0;
  int score = 0;

  @override
  void initState(){
    super.initState();
    question = maListeQuestion[index];
  }
  @override
  Widget build(BuildContext context) {
    // todo : implement build
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new CustomText("le quizz", color : Colors.white),
        backgroundColor : Colors.greenAccent,
      ),
      body: new Center(),
    );
  }
}
