import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/transactions_list.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import 'package:personal_expenses/models/transactions.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transactions> _userTransactions = [
    Transactions(
      id: 't1',
      title: 'New Shoes',
      amount: 99.99,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't2',
      title: 'Weekly Starbucks',
      amount: 8.80,
      date: DateTime.now(),
    ),
  ];

  void _addUserTransactions(String txTitle, double txAmount) {
    final newTx = Transactions(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addUserTransactions),
        TransactionsList(_userTransactions),
      ],
    );
  }
}
