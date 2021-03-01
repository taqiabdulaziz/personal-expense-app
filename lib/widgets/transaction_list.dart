import 'package:flutter/material.dart';
import 'package:personal_expense_app/models/transaction.dart';
import 'package:personal_expense_app/widgets/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TransactionCard(
            title: _transactions[index].title,
            date: _transactions[index].dateTrx,
            price: _transactions[index].amount,
          );
        },
        itemCount: _transactions.length,
      ),
    );
  }
}
