import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice1/widgets/user_tranaction.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
        children:
            //UserTransactions();
            transactions.map((tx) {
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
