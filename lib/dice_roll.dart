import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRoll();
  }
}

class _DiceRoll extends State<DiceRoll> {
  var currentDice = 2;
  void rollHandler() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDice.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollHandler,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
