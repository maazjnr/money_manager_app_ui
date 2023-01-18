enum TransactionType { outflow, inflow }

enum ItemCategoryType { fashion, grocery, payments }

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transaction;

  const UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inflow,
      required this.outflow,
      required this.transaction});
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(this.categoryType, this.transactionType,
      this.itemCategoryName, this.itemName, this.amount, this.date);
}

const List<Transaction> transaction1 = [
  Transaction(ItemCategoryType.fashion, TransactionType.outflow, 'Shoes',
      'Puma Sneaker', "\$3.500.00", "Jan 14"),
  Transaction(ItemCategoryType.fashion, TransactionType.outflow, 'Bags',
      'Gucci Flax', "\$10.500.00", "Feb 3")
];

const List<Transaction> transaction2 = [
  Transaction(ItemCategoryType.payments, TransactionType.inflow, 'Payments',
      'Transfer from Eden', "\$13.500.00", "Nov 8"),
  Transaction(ItemCategoryType.grocery, TransactionType.inflow, 'Food',
      'Chicken Wings', "\$1,500.00", "Feb 11"),
  Transaction(ItemCategoryType.grocery, TransactionType.outflow, 'Rent',
      'Transfer from Eden', "\$800.00", "June 6"),
        Transaction(ItemCategoryType.grocery, TransactionType.outflow, 'Shopping',
      'Luiz Vuitton suit', "\$10,00.00", "June 6"),
];

const userData = UserInfo(
  name: "Jacob",
  totalBalance: '\$14,586.00',
  inflow: '\4,000.00',
  outflow: '\2000,00',
  transaction: transaction1,
);
