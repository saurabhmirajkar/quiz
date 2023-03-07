import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import '../models/question_model.dart';

class Quiz extends StatelessWidget {
  final List<QuestionModel> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.answerQuestion, this.questions, this.questionIndex});

  Widget build(BuildContext context) {
    var selectedSet = questions[questionIndex];
    return Column(
      children: [
        Question(selectedSet.questionText),
        ...(selectedSet.answers).map((answer) {
          return Answer(
              answerText: answer.answerText,
              selectHandler: () => answerQuestion(answer.score));
        }).toList()
      ],
    );
  }
}
