import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback setHandler;
  final String answerText;

  Answer(this.setHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: setHandler,
        child: Text(answerText),
      ),
    );
  }
}
