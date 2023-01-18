import 'package:flutter/material.dart';
import '../utils//constants.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData(this.label, this.amount, this.icon);
}


class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;

  const IncomeExpenseCard({Key? key, required this.expenseData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black12,
        blurRadius: 12, offset: Offset.zero,
        spreadRadius: 12
        )],
        color: expenseData.label == 'Income' ? primaryDark : accent,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultSpacing),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  expenseData.label,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: defaultSpacing / 3),
                  child: Text(
                    expenseData.amount,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
          Icon(
            expenseData.icon,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
