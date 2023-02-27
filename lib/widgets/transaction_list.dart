import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  // TransactionList({Key? key}) : super(key: key);

  final List<Transaction> transactions;
  TransactionList(this.transactions);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child:transactions.isEmpty  ?
      // Column(
      //   children: [
      //      Text('No Transactions added yet!',
      //       style: Theme.of(context).textTheme.titleLarge,
      //        textAlign: TextAlign.center,
      //     )
      //     // Container(
      //     //     height: 200,
      //     //     child: Image.asset('assets/images/zzz.png', fit: BoxFit.cover)),
      //   ],
      // )
      Container(
        alignment: Alignment.center,
        child: Text('No Transactions added yset!',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      )
          : ListView.builder(
        itemBuilder: (ctx, index) {
          return
            Card(
              elevation: 2,
              child: Row(
                children: <Widget> [
                  Container(
                    width: 90,
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1,
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text('${transactions[index].amount}\nMMK',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: const Color( 0xFF388E3C),
                      ),),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(transactions[index].title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                      Text(DateFormat().format(transactions[index].date), style: const TextStyle(color: Colors.grey),),
                    ],
                  )
                ],
              ),
            );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
