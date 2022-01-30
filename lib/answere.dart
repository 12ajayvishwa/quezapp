import 'package:flutter/material.dart';

class Answere extends StatelessWidget {
  late final void Function()? selectHandler;
  late final String answerText;

  Answere(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
