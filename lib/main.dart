import 'package:flutter/material.dart';
import 'package:new_project/result.dart';

import 'quiz_container.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      this._questionIndex++;
    });
    print('Question answered!');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  int _questionIndex = 0;
  int _totalScore = 0;

  static const List<Map<String, Object>> _questionsList = [
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 4}
      ]
    },
    {
      'questionText': 'Whats your favorite food?',
      'answers': [
        {'text': 'Spaghetti', 'score': 2},
        {'text': 'Meat', 'score': 3},
        {'text': 'Roasted chicken', 'score': 4},
        {'text': 'Fish', 'score': 5}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My first app')),
          body: _questionIndex < _questionsList.length
              ? QuizContainer(
                  questionList: _questionsList,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : ResultScreen(_totalScore, _resetQuiz)),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// this is the same as this:

void main() => runApp(MyApp());
