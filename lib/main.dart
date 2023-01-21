// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:practice1/widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //final List<Transaction> transactions = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practice'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Add Transaction'),
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
            TransactionList()
          ],
        ),
      ),
    );
  }
}
