import 'package:flutter/material.dart';
import 'dart:math';
class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice> {
  var currentDiceRol = 1;
  void rollDice() {

    setState(() {
      currentDiceRol = Random().nextInt(6) + 1;
    });
    print('0');
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage('assets/images/dice-$currentDiceRol.png'),
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding:  const EdgeInsets.only(top: 20),
            foregroundColor: Colors.amber,textStyle: const TextStyle(fontSize: 28),),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
