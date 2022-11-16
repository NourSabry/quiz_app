// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, must_be_immutable
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': [
        {"text": "red", "score": 5},
        {"text": "blue", "score": 4},
        {"text": "green", "score": 3},
        {"text": "black", "score": 8},
      ],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {"text": "dogs", "score": 10},
        {"text": "cats", "score": 8},
        {"text": "elephants", "score": 5},
        {"text": "ducks", "score": 4},
      ],
    },
    {
      'questionText': 'what\'s your favourite books?',
      'answers': [
        {"text": "sox", "score": 9},
        {"text": "sab", "score": 7},
        {"text": "solitaire", "score": 8},
        {"text": "rwlb", "score": 10},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetGame() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    if (questionIndex < questions.length) {
      print("we have more questions");
    } else {
      print('No more questions!');
    }
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my First App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions)
            : Result(totalScore, resetGame),
      ),
    );
  }
}
