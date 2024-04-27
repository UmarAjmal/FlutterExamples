import 'package:epense_tracker/widgets/expenseslist.dart';
import 'package:epense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:epense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredexpenses = [
    Expense(
      title: "Flutter Course",
      amount: 19.99,
      date: DateTime.now(),
      category: Category.Work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.Leisure,
    ),
  ];

  void _openExpenseAddOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) =>  const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _openExpenseAddOverlay,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(child: Expenseslist(expenses: _registeredexpenses))
        ],
      ),
    );
  }
}
