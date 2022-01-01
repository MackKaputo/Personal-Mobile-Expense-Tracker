import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  const Result({Key? key, required this.resultScore, required this.resetQuiz})
      : super(key: key);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = "Not that well";
    } else if (resultScore >= 8 && resultScore <= 13) {
      resultText = "Good enough";
    } else {
      resultText = "Excellent!!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: const Text("Restart Quiz"),
            onPressed: () => resetQuiz(),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
        ],
      ),
    );
  }
}
