import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'package:epense_tracker/widgets//expenseitems.dart';

class Expenseslist extends StatelessWidget {
  const Expenseslist(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(expenses[index]),
          onDismissed: (direction) => onRemoveExpense(expenses[index]),
          child: ExpenseItem(expenses[index])),
    );
  }
}
