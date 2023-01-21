import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'New Shoes', amount: 88, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: _userTransactions.map((tx) {
      return Card(
          child: Column(
        children: [
          Row(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),
              ),
              child: Column(
                children: [
                  Text(
                    '\$' + tx.amount.toString(),
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                tx.title,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat('dd MMM yy').format(tx.date),
                style: TextStyle(
                  color: Color.fromARGB(255, 104, 102, 102),
                ),
              )
            ]),
          ]),
        ],
      ));
    }).toList());
  }
}
