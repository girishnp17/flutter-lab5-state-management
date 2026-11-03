import 'package:flutter/material.dart';

import '../models/budget_result.dart';

class BudgetStatusCard extends StatelessWidget {
  final BudgetResult result;

  const BudgetStatusCard({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final bool surplus = result.isSurplus;
    final Color color = surplus ? Colors.green : Colors.red;

    return Card(
      color: color.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: color, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(surplus ? Icons.trending_up : Icons.trending_down, color: color),
                const SizedBox(width: 8),
                Text(
                  surplus ? "You're in surplus" : "You're in deficit",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Remaining balance: ₹${result.balance.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text('Income: ₹${result.income.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.grey.shade700)),
            Text('Expenses: ₹${result.expenses.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.grey.shade700)),
          ],
        ),
      ),
    );
  }
}
