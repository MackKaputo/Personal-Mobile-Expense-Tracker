import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("Question selected after $_questionIndex");
  }

  var questions = [
    {
      "questionText": "What's your favorite subject?",
      "answers": ["Math", "Physics", "Chemistry", "Design"]
    },
    {
      "questionText": "What do you study?",
      "answers": ["Engineering", "Philosophy", "Economics", "Art"]
    },
    {
      "questionText": "How many children do you want to have?",
      "answers": ["zero", "one", "two", "more than two"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mack"),
        ),
        body: Column(
          children: [
            Question(
                questionText:
                    questions[_questionIndex]["questionText"] as String),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((question) {
              return Answer(
                  selectHandler: _answerQuestion, answerText: question);
            }).toList()
          ],
        ),
      ),
    );
  }
}

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
