import 'package:despesas/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: transactions.map((e) {
          return Card(
            // componente que recebe a lista transactions exibe os valores preço nome e data em cards numa coluna.
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
                child: Text(
                    'R\$ ${e.value.toStringAsFixed(2)}', //toStringAsFixed(2) -> diz que o valor a ser exbido só pode ter 2 casas decimais
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat('d MMM y').format(e.date),
                    style: TextStyle(color: Colors.grey.shade600),
                  )
                ],
              )
            ]),
          );
        }).toList(),
      ),
    );
  }
}
