import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp()); //si può scrivere anche così, più semplice

class MyApp extends StatelessWidget {
  @override //fa il codice più pulito e chiaro, stiamo facendo un override della classe
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Hello!"),
    );
  }
}
