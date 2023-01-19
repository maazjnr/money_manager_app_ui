import 'dart:math';

import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/constants.dart';
import '../data/userInfo.dart';

class TransactionItemTitle extends StatelessWidget {
  const TransactionItemTitle({super.key, required this.transaction});

  final Transaction transaction;
      // ignore: unused_element
    String getSign(TransactionType type) {
      switch (type) {
        case TransactionType.inflow:
          return "+";
        case TransactionType.outflow:
          return "-";
      }
    }

    Color getRandomBackBgColor() {
      return Color(Random().nextInt(0XFF000000));
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultSpacing / 2),
      decoration: const BoxDecoration(color: background, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset.zero,
          blurRadius: 10,
          spreadRadius: 2,
        )
      ]),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(defaultSpacing / 2),
          decoration:  BoxDecoration(
              color: getRandomBackBgColor(),
              borderRadius:
                 const BorderRadius.all(Radius.circular(defaultSpacing / 2))),
          child: transaction.categoryType == ItemCategoryType.fashion
              ? const Icon(
                  Icons.supervised_user_circle_sharp,
                  color: Colors.white,
                )
              : const Icon(Icons.house),
        ),
        title: Text(
          transaction.itemCategoryName,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontSize: fontSizeTitle,
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          transaction.itemName,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontSize: fontSizeBody,
              color: Colors.grey,
              fontWeight: FontWeight.w700),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${getSign(transaction.transactionType)} ${transaction.amount} ",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: fontSizeTitle,
                  color: transaction.transactionType == TransactionType.outflow
                      ? Colors.red
                      : Colors.black),
            ),
            Text(
              transaction.date,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: fontSizeTitle, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
