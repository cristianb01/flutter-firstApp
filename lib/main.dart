import 'package:flutter/material.dart';
import './question.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  _answerQuestion() {
    print('Question answered!');
  }

  int _questionIndex = 0;

  List<String> questions = [
    'Whats your favorite color?',
    'Whats your favorite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My first app')),
          body: Column(
            children: <Widget>[
              Question(this.questions[this._questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Answer 2');
                },
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  setState(() {
                    this._questionIndex++;
                  });
                },
              ),
            ],
          )),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// this is the same as this:

void main() => runApp(MyApp());
