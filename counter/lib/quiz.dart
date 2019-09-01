import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int indexQuestion;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.indexQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[indexQuestion]['questionText'],
        ),
        ...(questions[indexQuestion]["answerText"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=> answerQuestion(answer['Score']), answer["Text"]);
        }).toList()
      ],
    );
  }
}
