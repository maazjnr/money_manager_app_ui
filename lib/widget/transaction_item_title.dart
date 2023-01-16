import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/constants.dart';
import '../data/userInfo.dart';

class TransactionItemTitle extends StatelessWidget {
  
  const TransactionItemTitle({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: background, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset.zero,
          blurRadius: 10,
          spreadRadius: 4,
        )
      ]),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(defaultSpacing / 2),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultSpacing / 2))),
          child: const Icon(Icons.access_time_filled_sharp),
        ),
        title: Text(
          'Shoes',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontSize: fontSizeTitle,
              color: Colors.black,
              fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          'Sneaker Nike',
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
              '-\$140.00',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: fontSizeTitle, color: Colors.black),
            ),
            Text(
              'Jan 23',
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
