import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        title: 'Flutter Course',
        amount: 20.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Snack',
        amount: 20.99,
        date: DateTime.now(),
        category: Category.food),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpense,
            ),
          ),
        ],
      ),
    );
  }
}
