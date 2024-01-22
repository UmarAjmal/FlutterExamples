import 'package:flutter/material.dart';
import './questions.dart';

void main() {
  runApp(quizapp());
}

class quizapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _quizappState();
  }
}

class _quizappState extends State<quizapp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your faviourt colour?', 'What\'s your age?'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Qize App',
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            Questions(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1.'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2.'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3.'),
            ),
          ],
        ),
      ),
    );
  }
}
