import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback setHandler;
  //final VoidCallback  onPressed;
  final String answerText;

  Answer(this.setHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: setHandler,
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          textStyle: const TextStyle(
            color: Colors.black
          ),
        ),
      ),
    );
  }
}
