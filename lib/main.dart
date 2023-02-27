import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  var _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite meal?'
  ];

  var _questionIndex = 0;

  void answerQuestion() {
    print('Answer good');
    setState(() {
      _questionIndex += 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: false,
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
