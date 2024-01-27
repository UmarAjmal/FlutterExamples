import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 1, 25, 114),
            Color.fromARGB(255, 57, 1, 79)),
      ),
    ),
  );
}
