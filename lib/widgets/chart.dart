import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  // const Chart({Key? key}) : super(key: key);


  final List<Transaction> recentTransactions;
  Chart(this.recentTransactions);
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index)  {
      final weekDay = DateTime.now().subtract(Duration(days: index),);
      var totalSum = 0.0;
      for (var i = 0; i < recentTransactions.length; i++ ) {
        if ( recentTransactions[i].date.day == weekDay.day &&
            recentTransactions[i].date.month == weekDay.month &&
            recentTransactions[i].date.year == weekDay.year )
        {
          totalSum += recentTransactions[i].amount;
        }
      }
      print(DateFormat.E().format(weekDay));
      print(totalSum);
      print('I AM HERE');
      return {'day': DateFormat.E().format(weekDay), 'amount': totalSum};
    });
  }

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionValues);
    return Card(
      elevation: 6,
      child:  Row(
        children: [],
      ),
    );
  }
}
