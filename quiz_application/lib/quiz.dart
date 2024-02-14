import 'package:flutter/material.dart';
import 'package:quiz_application/data/questions.dart';
import 'package:quiz_application/question_screen.dart';
import './start_screen.dart';
import './result_screen.dart';
import './question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];
  var activeScreen = 'result_screen';


  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    },);
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start screen';
      },);
    }
  }

   @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'question_screen'){
      screenWidget = Questions(onSelectedAnswer: chooseAnswer);
    }
    if(activeScreen == 'result_screen'){
      screenWidget =  ResultScreen(chosenanswer: selectedAnswers,);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 51),
                Color.fromARGB(207, 123, 12, 76)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: activeScreen == 'start_screen'
              ? StartScreen(switchScreen)
              : Questions(
                  onSelectedAnswer: chooseAnswer,
                ),
        ),
      ),
    );
  }
}
