import 'package:flutter/material.dart';
import 'package:new_project/answerButton.dart';
import 'package:new_project/question.dart';

class QuizContainer extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function answerQuestion;
  final int questionIndex;

  QuizContainer(
      {@required this.questionList,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionList[this.questionIndex]['questionText']),
        ...(questionList[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(
              answer['text'], () => this.answerQuestion(answer['score']));
        }).toList()
      ],
    );
  }
}
