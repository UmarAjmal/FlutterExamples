import 'package:flutter/material.dart';
import 'package:quiz_application/question_screen.dart';
import './start_screen.dart';
import './question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';

  @override

  void switchScreen(){
    setState(() {
      activeScreen = 'questions_screen';
    });
  }
  Widget build(BuildContext context) {
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
          child: activeScreen == 'start_screen' ? StartScreen(switchScreen) : const Questions(),),
      ),
    );
  }
}
