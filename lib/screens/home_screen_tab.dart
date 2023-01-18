import 'package:flutter/material.dart';
import 'package:money_manager_app/data/userInfo.dart';
import 'package:money_manager_app/widget/income_expense_card.dart';
import 'package:money_manager_app/widget/transaction_item_title.dart';
import '../data/userInfo.dart';
import '../utils/constants.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(defaultSpacing)),
                child: Image.asset(
                  'assets/images/avatar.jpeg',
                ),
              ),
              title: Text(' Hey! ${userData.name}!'),
              trailing: Image.asset('assets/icons/bell.png'),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '${userData.totalBalance} ',
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
              children: [
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData('Income', '\$${userData.inflow} ',
                        Icons.arrow_upward_rounded),
                  ),
                ),
                const SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData(
                        'Expense',
                        '-\$${userData.outflow} ',
                        Icons.arrow_downward_rounded),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Text(
              'Recent Transactions',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: defaultSpacing * 1.5,
            ),
            const Text(
              'Yesterday',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            ...userData.transaction.map((transaction) =>
                TransactionItemTitle(transaction: transaction)),
            const SizedBox(
              height: defaultSpacing,
            ),

                        ...transaction2.map((transaction) =>
                TransactionItemTitle(transaction: transaction)),
          ],
        ),
      ),
    );
  }
}
