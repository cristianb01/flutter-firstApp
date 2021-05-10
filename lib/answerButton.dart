import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function onButtonClick;
  final answerText;
  AnswerButton(this.answerText, this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: this.onButtonClick,
      ),
    );
  }
}
