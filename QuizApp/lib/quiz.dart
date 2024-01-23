import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
   final List<Map<String, dynamic>> questions;
   final int questionIndex;
   final VoidCallback  answerQuestion;

  Quiz({ required this.questions, required this.questionIndex, required this.answerQuestion});

  // Qize({
  //     @required questions,
  //     @required answerQuestion,
  //     @required questionIndex
  // }) {
  //   // TODO: implement Qize
  //   throw UnimplementedError();
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer( ()=>answerQuestion(answer['score'] as String), answer['text'] as String);
        }).toList()

      ],
    );
  }
}
