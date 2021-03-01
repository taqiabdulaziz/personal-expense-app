import 'package:flutter/material.dart';
import 'package:personal_expense_app/models/transaction.dart';
import 'package:personal_expense_app/widgets/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transactions
          .map((transaction) => TransactionCard(
                title: transaction.title,
                date: transaction.dateTrx,
                price: transaction.amount,
              ))
          .toList(),
    );
  }
}
