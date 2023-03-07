import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Navy Blue', 'Red', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Wolf', 'Horse', 'Monkey'],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': ['Max', 'Angela', 'Colt', 'Flutterly'],
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: false,
          ),
          body: _questionIndex < _questions.length
              ? Column(
                  children: [
                    Question(
                        _questions[_questionIndex]['questionText'] as String),
                    ...(_questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(answer, _answerQuestion);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text('You did it'),
                )),
    );
  }
}
