import 'answer_model.dart';

class QuestionModel {
  final String questionText;
  final List<AnswerModel> answers;

  QuestionModel({this.questionText, this.answers});
}