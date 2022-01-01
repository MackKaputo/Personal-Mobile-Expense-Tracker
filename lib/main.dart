import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense Planner",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // String titleInput = "";
  // String amountInput = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Homepage"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start, //default
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              child: Text("My CHART "),
              elevation: 5,
            ),
          ),
          const UserTransactions()
        ],
      ),
    );
  }
}
