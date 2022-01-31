import 'package:flutter/material.dart';
import './question.dart';
import './answere.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final void Function(int score)? answerQuestion;

  Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answere) {
          return Answere(() => answerQuestion!(answere['score'] as int),
              answere["text"] as String);
        }).toList()
      ],
    );
  }
}
