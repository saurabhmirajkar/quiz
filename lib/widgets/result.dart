import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result({this.resultScore});

  String get resultPhrase {
    String resultText = 'You did it';

    if (resultScore <= 8) {
      resultText = 'You are strange';
    } else if (resultScore <= 12) {
      resultText = 'Pretty awesome';
    } else if (resultScore <= 16) {
      resultText = 'You are innocent!';
    } else {
      resultText = 'Godlike!';
    }
    return resultText;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
