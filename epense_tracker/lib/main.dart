import 'package:flutter/material.dart';
import 'package:epense_tracker/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    ),
  );
}
