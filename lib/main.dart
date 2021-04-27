import 'package:flutter/material.dart';

import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override //fa il codice più pulito e chiaro, stiamo facendo un override della classe
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => print("Answer 1 chosen"),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 chosen");
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
