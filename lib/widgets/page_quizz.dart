import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:quiz_app/classes/questions.dart';

class QuizzPage extends StatefulWidget{
  @override
  _PageState createState() => new  _PageState();
}

class _PageState extends State<QuizzPage> {
  // question de type Question
  Question question;
  List <Question> maListeQuestion = [];
  @override
  Widget build(BuildContext context){
    // todo : implement build
    return new Scaffold(
      appBar : new AppBar(
        centerTitle: true,
        title : new CustomText("le quizz"),
      ),
      body : new Center(),
    );
  }
}