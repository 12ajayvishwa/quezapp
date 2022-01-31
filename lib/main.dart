import 'package:flutter/material.dart';
import 'package:quezapp/quiz.dart';
import 'package:quezapp/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answereQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  var _question = [
    {
      "questionText": "what's your favorite color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      "questionText": "what's your favorite animal?",
      "answers": [
        {'text': 'Rabit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephand', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ],
    },
    {
      "questionText": "what's your favorite instructor?",
      "answers": [
        {'text': 'Flutter', 'score': 12},
        {'text': 'Max', 'score': 5},
        {'text': 'Flutter', 'score': 12},
        {'text': 'Max', 'score': 5}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  answerQuestion: _answereQuestion,
                  questionIndex: _questionIndex,
                  question: _question,
                )
              : Result(_totalScore)),
    );
  }
}
