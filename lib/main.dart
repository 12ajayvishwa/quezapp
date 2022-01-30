import 'package:flutter/material.dart';
import './question.dart';
import './answere.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answereQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var question = [
    {
      "questionText": "what's your favorite color?",
      "answers": ['Black', 'Red', 'Green', 'White'],
    },
    {
      "questionText": "what's your favorite animal?",
      "answers": ['Rabit', 'Snake', 'Elephand', 'Lion'],
    },
    {
      "questionText": "what's your favorite instructor?",
      "answers": ['Flutter', 'Max', 'Flutter', 'Max'],
    },
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
            Question(question[_questionIndex]['questionText'] as String),
            ...(question[_questionIndex]['answers'] as List<String>)
                .map((answere) {
              return Answere(_answereQuestion, answere);
            }).toList()
          ],
        ),
      ),
    );
  }
}
