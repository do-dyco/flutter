import 'package:flutter/material.dart';
import 'package:flutter_test1/gradient-container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 88, 38, 172), Color.fromARGB(255, 34, 23, 98)),
      ),
    ),
  );
}
