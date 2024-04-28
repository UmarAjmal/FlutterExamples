import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'package:epense_tracker/widgets//expenseitems.dart';
class Expenseslist extends StatelessWidget {
  Expenseslist({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
