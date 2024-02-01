import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
   StartScreen(this.startScreen,{super.key});
  void Function() startScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Opacity(
            opacity: 0.1,
            child: FlutterLogo(
              size: 400.0,
            ),
          ),
          const SizedBox(height: 16.0),
          // Adding some space between the logo and other elements
          const Text(
            'Learn flutter the fun way! ',
            style: TextStyle(
              color: Color.fromARGB(100, 241, 197, 228),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton.icon(
            onPressed: () {
              startScreen();
            },
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(100, 241, 197, 228)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
          // Add more widgets as needed
      ],
      ),
    );
  }
}
