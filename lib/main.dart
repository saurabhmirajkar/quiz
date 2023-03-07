import 'package:flutter/material.dart';
import 'models/answer_model.dart';
import 'models/question_model.dart';
import 'widgets/result.dart';
import 'widgets/quiz.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<QuestionModel> _questions = [
    QuestionModel(
      questionText: 'What\'s your favorite color?',
      answers: [
        AnswerModel(answerText: 'Black', score: 3),
        AnswerModel(answerText: 'Navy Blue', score: 4),
        AnswerModel(answerText: 'Red', score: 2),
        AnswerModel(answerText: 'White', score: 1),
      ],
    ),
    QuestionModel(
      questionText: 'What\'s your favorite animal?',
      answers: [
        AnswerModel(answerText: 'Lion', score: 4),
        AnswerModel(answerText: 'Wolf', score: 3),
        AnswerModel(answerText: 'Horse', score: 3),
        AnswerModel(answerText: 'Monkey', score: 2),
      ],
    ),
    QuestionModel(
      questionText: 'Who is your favorite instructor?',
      answers: [
        AnswerModel(answerText: 'Max', score: 3),
        AnswerModel(answerText: 'Angela', score: 4),
        AnswerModel(answerText: 'Colt', score: 2),
        AnswerModel(answerText: 'Flutterly', score: 2),
      ],
    ),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: false,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
              ),
      ),
    );
  }
}
