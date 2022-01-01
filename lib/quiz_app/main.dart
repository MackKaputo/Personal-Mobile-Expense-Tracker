import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite subject?",
      "answers": [
        {"text": "Math", "score": 10},
        {"text": "Physics", "score": 5},
        {"text": "Chemistry", "score": 3},
        {"text": "Design", "score": 2}
      ]
    },
    {
      "questionText": "What do you study?",
      "answers": [
        {"text": "Engineering", "score": 10},
        {"text": "Philosophy", "score": 5},
        {"text": "Economics", "score": 3},
        {"text": "Art", "score": 2}
      ]
    },
    {
      "questionText": "How many children do you want to have?",
      "answers": [
        {"text": "zero", "score": 10},
        {"text": "one", "score": 5},
        {"text": "two", "score": 3},
        {"text": "more than two", "score": 2}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore = _totalScore + score;
      _questionIndex++;
    });
    print("Question selected after $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Mack"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex)
              : Result(resultScore: _totalScore, resetQuiz: _resetQuiz)),
    );
  }
}

//? Long version
// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;
//   final questions = const [
//     {
//       "questionText": "What's your favorite subject?",
//       "answers": ["Math", "Physics", "Chemistry", "Design"]
//     },
//     {
//       "questionText": "What do you study?",
//       "answers": ["Engineering", "Philosophy", "Economics", "Art"]
//     },
//     {
//       "questionText": "How many children do you want to have?",
//       "answers": ["zero", "one", "two", "more than two"]
//     },
//   ];

//   void _answerQuestion() {
//     setState(() {
//       _questionIndex++;
//     });
//     print("Question selected after $_questionIndex");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Mack"),
//         ),
//         body: _questionIndex < questions.length
//             ? Column(
//                 children: [
//                   Question(
//                       questionText:
//                           questions[_questionIndex]["questionText"] as String),
//                   ...(questions[_questionIndex]["answers"] as List<String>)
//                       .map((question) {
//                     return Answer(
//                         selectHandler: _answerQuestion, answerText: question);
//                   }).toList()
//                 ],
//               )
//             : const Center(
//                 child: Text("Thank you, you did it!!"),
//               ),
//       ),
//     );
//   }
// }

//? Stateless version
// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);

//   void _answerQuestion() {
//     print("Question selected after");
//   }

//   var questions = ["What's your name?", "What do you eat everyday?"];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Mack"),
//         ),
//         body: Column(
//           children: [
//             Text(questions[1]),
//             RaisedButton(
//               child: const Text("Answer 1"),
//               onPressed: _answerQuestion,
//             ),
//             ElevatedButton(
//               child: const Text("Answer 2"),
//               onPressed: _answerQuestion,
//             ),
//             ElevatedButton(
//               child: const Text("Answer 3"),
//               onPressed: _answerQuestion,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
