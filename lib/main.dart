import 'package:flutter/material.dart';
//importing Transaction class
import 'models/transaction.dart';
//importing widgets
import './widgets/content_of_tx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // final List<Transaction> transactions = [
  //   Transaction(
  //       id: 't1', title: 'New Shoes', amount: 99.99, date: DateTime.now()),
  //   Transaction(
  //       id: 't2', title: 'Grocery', amount: 109.99, date: DateTime.now()),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Column(
          children: [
            Card(
              child: Text('Chart'),
            ),
            ContentOfTransaction()
          ],
        ));
  }
}
