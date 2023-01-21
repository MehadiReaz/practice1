// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:practice1/widgets/user_tranaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
