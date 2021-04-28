import 'package:flutter/material.dart';

import './quiz.dart';
import 'answer.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp()); //si può scrivere anche così, più semplice

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // la _ crea un privato
  var _questionIndex = 0;
  static const _questions = [
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "Red", "Green", "Blue"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Rabbit", "Snake", "Elefant", "Lion"]
    },
    {
      "questionText": "Who is your favorite Teacher",
      "answers": ["Max", "Max", "Max", "Max"]
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
  }

  @override //fa il codice più pulito e chiaro, stiamo facendo un override della classe
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
