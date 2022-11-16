// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final Function? answerQuestion;
  final List<Map<String, dynamic>>? questions;
  final int? questionIndex;

  const Quiz({ required this.answerQuestion,required this.questionIndex, required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions?[questionIndex!]['questionText'].toString(),
        ),
        //we set dynamic instead of object so it works
        ...(questions?[questionIndex!]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
              () => answerQuestion!(answer['score']), answer['text'].toString());
        })
      ],
    );
  }
}
