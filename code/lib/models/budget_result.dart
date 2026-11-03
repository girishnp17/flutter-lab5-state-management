class BudgetResult {
  final double income;
  final double expenses;

  const BudgetResult({required this.income, required this.expenses});

  double get balance => income - expenses;

  bool get isSurplus => balance >= 0;
}
