import 'package:flutter/material.dart';
import 'package:quiz_application/question.dart';
import './start_screen.dart';
import './question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState(() {
      activeScreen = const Questions();
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
          child: activeScreen,),
      ),
    );
  }
}
