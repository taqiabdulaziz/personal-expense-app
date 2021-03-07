import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expense_app/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: _transactions.isEmpty
          ? Column(
              children: [
                Text(
                  'No transaction added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  elevation: 3,
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: FittedBox(
                              child: Text('\$${_transactions[index].amount}')),
                        ),
                      ),
                      title: Text(_transactions[index].title,
                          style: Theme.of(context).textTheme.headline6),
                      subtitle: Text(DateFormat.yMMMd()
                          .format(_transactions[index].dateTrx))),
                );
                // return TransactionCard(
                //   title: _transactions[index].title,
                //   date: _transactions[index].dateTrx,
                //   price: _transactions[index].amount,
                // );
              },
              itemCount: _transactions.length,
            ),
    );
  }
}
