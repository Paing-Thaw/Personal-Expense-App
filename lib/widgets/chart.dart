import 'package:flutter/material.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  // const Chart({Key? key}) : super(key: key);
  Chart(this.recentTransactions);

  final List<Transaction> recentTransactions;
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index)  {
      return {'day': 'T', 'amount': 99.9};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child:  Row(
        children: [],
      ),
    );
  }
}
