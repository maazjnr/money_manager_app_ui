import 'package:flutter/material.dart';
import 'package:money_manager_app/widget/income_expense_card.dart';
import '../utils/constants.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(defaultSpacing)),
                child: Image.asset(
                  'assets/images/avatar.jpeg',
                ),
              ),
              title: const Text('Hey! Jacob !'),
              trailing: Image.asset('assets/icons/bell.png'),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '\$4,586,00',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: defaultSpacing * 1.5,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Text(
                    'Total Balance',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData(
                        'Income', '\$2,400.00', Icons.arrow_upward_rounded),
                  ),
                ),
                SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData(
                        'Expense', '-\$710.00', Icons.arrow_downward_rounded),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
