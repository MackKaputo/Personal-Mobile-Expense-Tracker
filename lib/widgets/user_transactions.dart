import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: "t1", title: "New watch", amount: 234.4, date: DateTime.now()),
    Transaction(
        id: "t2", title: "Pen tablet", amount: 345, date: DateTime.now()),
    Transaction(id: "t3", title: "Groceries", amount: 600, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(transactions: _userTransactions)
      ],
    );
  }
}
