import 'package:flutter/material.dart';
import 'package:quiz_application/data/questions.dart';
import './question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenanswer});

  final List<String> chosenanswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i <= chosenanswer.length; i++) {
      summary.add({
        "question_Index": i,
        "question": questions[i],
        "correct_answers": questions[i].answers[0],
        "user_answer": chosenanswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswer = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectAnswer out of $numTotalQuestions questions.'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            const Text('List of Qn/A.'),
            const SizedBox(
              height: 30,
            ),
            const TextButton(onPressed: null, child: Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
