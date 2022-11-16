// ignore_for_file: use_key_in_widget_constructors

 
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? handler;
  final String? answerText;

  const Answer(this.handler , this.answerText);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handler,
      child:   Text(answerText!),
    );
  }
}
