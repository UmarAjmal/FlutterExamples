import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _totalScore=0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  var _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answer': [{'text':'Red', 'score': 2},
        {'text':'Black','score':0},
        {'text':'Purple','score':0},
        {'text':'Yellow','score':0}]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [{'text':'Cat','score': 2},
        {'text':'Parrots','score': 0},
        {'text':'Peigons','score': 0},
        {'text':'Dogs','score': 0}]
    }
  ];

  void _answerQuestion(int score ) {

    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more Qeestions.');
    } else {
      print('No more question.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Qize App',
            textAlign: TextAlign.center,
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: () => _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
