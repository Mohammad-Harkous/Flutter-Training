import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var KColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: KColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: KColorScheme.onPrimaryContainer,
          foregroundColor: KColorScheme.primaryContainer,
        )
      ),
      home: const Expenses(),
    ),
  );
}
