// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? totalScore;
  final Function()? resetGame;
  const Result(this.totalScore, this.resetGame);

  String get textResult {
    String textPharase;

    if (totalScore! <= 18) {
      textPharase = "You're so awseome and innocent";
    } else if (totalScore! <= 25) {
      textPharase = 'you are prety likeable?';
    } else if (totalScore! <= 30) {
      textPharase = "you are ... strange?";
    } else {
      textPharase = "your are so dark baby :* ";
    }
    return textPharase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            textResult,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetGame,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              minimumSize: const Size(250, 30),
              elevation: 2,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: const Text(
              "Play Again",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
