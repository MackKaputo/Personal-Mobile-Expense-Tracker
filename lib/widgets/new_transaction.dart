import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key}) : super(key: key); // Transaction constructor

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              // onChanged: (val) => titleInput = val,
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Amount"),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            TextButton(
              child: const Text("Add transaction"),
              onPressed: () {
                print("${titleController.text}: ${amountController.text}");
                // transactions.add(Transaction(id: 'new', title: titleInput, amount: amountInput, date: DateTime.now())),
              },
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}
