import 'package:flutter/material.dart';
import 'package:quiz_application/data/questions.dart';
import './answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_application/module/quiz_question.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(100, 247,197 , 228),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            ...currentQuestion.getShuffleAnswer().map((answer) {
              return Answer(answerText: answer, onTap: answerQuestion);
            })
            // Answer(answertext: currentQuestion.answers[0], onTap: () {}),
            // const SizedBox(
            //   height: 10,
            // ),
            // Answer(answertext: currentQuestion.answers[1], onTap: () {}),
            // const SizedBox(
            //   height: 10,
            // ),
            // Answer(answertext: currentQuestion.answers[2], onTap: () {}),
            // const SizedBox(height: 10,),
            // Answer(answertext: currentQuestion.answers[4], onTap: () { }),
          ],
        ),
      ),
    );
  }
}
