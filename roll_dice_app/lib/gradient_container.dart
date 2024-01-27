import 'package:flutter/material.dart';
import './rolloer_dice.dart';
const startalignment = Alignment.topLeft;
const endalignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      this.colors1,
      this.colors2, {
  super.key});

  final Color colors1;
  final Color colors2;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors1, colors2],
          begin: startalignment,
          end: endalignment,
        ),
      ),
      child: const Center(
        child:RollerDice(),
      ),
    );
  }
}
