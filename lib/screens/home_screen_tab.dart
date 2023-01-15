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
            Row(
              children: const [
                Expanded(
                  child: IncomeExpenseCard(),
                ),
                SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                  child: IncomeExpenseCard(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
