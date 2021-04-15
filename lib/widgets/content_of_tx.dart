import 'package:flutter/material.dart';
import '../models/transaction.dart';
//importing widgets
import './form.dart';
import './transaction_list.dart';

class ContentOfTransaction extends StatefulWidget {
  @override
  _ContentOfTransactionState createState() => _ContentOfTransactionState();
}

class _ContentOfTransactionState extends State<ContentOfTransaction> {
  final List<Transaction> _transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 99.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Grocery', amount: 109.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _transactions.add(newTx);
    });
  } //function to create and add new trnsaction

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomForm(_addNewTransaction),
        TransactionList(_transactions)
      ],
    );
  }
}
