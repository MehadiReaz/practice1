// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:practice1/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'New Shoes', amount: 88, date: DateTime.now())
  ];
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
            Column(
                children: transactions.map((tx) {
              return Card(
                  child: Column(
                children: [
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextField(
                            decoration: InputDecoration(label: Text('Title'))),
                        TextField(
                            decoration: InputDecoration(label: Text('Amount'))),
                        FlatButton(
                            onPressed: () {}, child: Text('Add Transaction'))
                      ],
                    ),
                  ),
                  Row(children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
            }).toList()),
          ],
        ),
      ),
    );
  }
}
