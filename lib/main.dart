import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answereQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var question = [
    "what's your favorite color?",
    "what's your favorite animal?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(question[questionIndex]),
            RaisedButton(child: Text("Answere 1"), onPressed: answereQuestion),
            RaisedButton(child: Text("Answere 2"), onPressed: answereQuestion),
            RaisedButton(child: Text("Answere 3"), onPressed: answereQuestion),
          ],
        ),
      ),
    );
  }
}
