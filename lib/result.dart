import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;

  ResultScreen(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText;

    if (finalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (finalScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (finalScore <= 16) {
      resultText = 'You are... strange!';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: Text('Restart quiz'),
              onPressed: resetQuiz,
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue)))
        ],
      ),
    );
  }
}
