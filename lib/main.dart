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
    print('Answer good');
    setState(() {
      _questionIndex += 1;
    });
  }

  List<Map<String, Object>> getQuestions() {
    return [
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
  }

  Widget build(BuildContext context) {
    List<Map<String, Object>> _questions = getQuestions();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: false,
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
