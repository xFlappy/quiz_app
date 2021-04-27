import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp()); //si può scrivere anche così, più semplice

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
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
            Text("The question!"),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
