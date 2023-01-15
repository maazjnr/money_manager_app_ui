import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/constants.dart';
import '../utils//constants.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData(
    this.label, this.amount, this.icon
  );
}



class IncomeExpenseCard extends StatelessWidget {

  final ExpenseData expenseData;

  const IncomeExpenseCard({Key? key, required this.expenseData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(defaultSpacing),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [Text("Income"), Text('\$2000')],
            ),
          ),
          const Icon(Icons.arrow_upward)
        ],
      ),
    );
  }
}
