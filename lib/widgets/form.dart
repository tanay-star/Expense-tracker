import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  CustomForm(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
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
            onPressed: () {
              addNewTransaction(
                  titleController.text, double.parse(amountController.text));
            },
            child: Text('ADD TRANSACTION'),
            textColor: Colors.purple,
          )
        ],
      ),
    ));
  }
}
